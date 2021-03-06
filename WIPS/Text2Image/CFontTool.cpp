#include "CFontTool.h"

#include <stdio.h>

#include <sstream>
#include <iostream>
#include <algorithm>
#include <iterator>

#include "TTFText.h"


irr::core::stringw make_w (const irr::core::stringc& s)
{
  return irr::core::stringw (s);
}

irr::core::stringc make_c (const irr::core::stringw& w)
{
  return irr::core::stringc (w);
}

std::wstring make_std (const irr::core::stringw& w)
{
  return std::wstring (w.c_str(), w.size());
}

std::string make_std (const irr::core::stringc& s)
{
  return std::string (s.c_str(), s.size());
}

irr::core::stringc make_irr (const std::string& s)
{
  return irr::core::stringc (s.c_str(), s.size());
}

irr::core::stringw make_irr (const std::wstring& w)
{
  return irr::core::stringw (w.c_str(), w.size());
}


const int fontsizes[] = {4,6,8,9,10,11,12,14,16,18,20,22,24,26,28,36,48,56,68,72,0};

inline u32 getTextureSizeFromSurfaceSize(u32 size)
{
	u32 ts = 0x01;
	while(ts < size)
		ts <<= 1;

	return ts;
}


// windows specific
#ifdef _IRR_WINDOWS_

	const DWORD charsets[] = { ANSI_CHARSET, DEFAULT_CHARSET, OEM_CHARSET, BALTIC_CHARSET, GB2312_CHARSET, CHINESEBIG5_CHARSET,
								EASTEUROPE_CHARSET, GREEK_CHARSET, HANGUL_CHARSET, MAC_CHARSET, RUSSIAN_CHARSET,
								SHIFTJIS_CHARSET, SYMBOL_CHARSET, TURKISH_CHARSET, VIETNAMESE_CHARSET, JOHAB_CHARSET,
								ARABIC_CHARSET, HEBREW_CHARSET, THAI_CHARSET, 0};

	const wchar_t *setnames[] = {L"ANSI", L"All Available", L"OEM", L"Baltic", L"Chinese Simplified", L"Chinese Traditional",
								L"Eastern European", L"Greek", L"Hangul", L"Macintosh", L"Russian",
								L"Japanese", L"Symbol", L"Turkish", L"Vietnamese", L"Johab",
								L"Arabic", L"Hebrew", L"Thai", 0};

	// callback for adding font names
	int CALLBACK EnumFontFamExProc( ENUMLOGFONTEX *lpelfe, NEWTEXTMETRICEX *lpntme,
					DWORD FontType, LPARAM lParam)
	{
		CFontTool* t = (CFontTool*) lParam;
		t->FontNames.push_back( core::stringw(lpelfe->elfFullName));
		return 1;
	}

	//
	// Constructor
	//

	CFontTool::CFontTool(IrrlichtDevice* device) : FontSizes(fontsizes),
			Device(device), UseAlphaChannel(false),
			// win specific
			dc(0)
	{
		// init display context
		dc = CreateDC(L"DISPLAY", L"DISPLAY", 0 ,0 );

		// populate list of available character set names
		for (int i=0; setnames[i] != 0; ++i)
			CharSets.push_back( core::stringw(setnames[i]));

		selectCharSet(0);
	}

	void CFontTool::selectCharSet(u32 currentCharSet)
	{
		if ( currentCharSet >= CharSets.size() )
			return;

		LOGFONTW lf;
		lf.lfFaceName[0] = L'\0';
		lf.lfCharSet = (BYTE) charsets[currentCharSet];
		// HRESULT hr; // no error checking(!)

		// clear font list
		FontNames.clear();

		// create list of available fonts
		EnumFontFamiliesExW( dc, (LPLOGFONTW) &lf, (FONTENUMPROCW) EnumFontFamExProc, (LPARAM) this, 0);
	}

	bool CFontTool::makeBitmapFont(u32 fontIndex, u32 charsetIndex, s32 fontSize, u32 textureWidth, u32 textureHeight, bool bold, bool italic, bool aa, bool alpha)
	{
		if (fontIndex >= FontNames.size() || charsetIndex >= CharSets.size() )
			return false;


		// get rid of the current textures/images
		for (u32 i=0; i<currentTextures.size(); ++i)
		{
			Device->getVideoDriver()->removeTexture(currentTextures[i]);
			currentTextures[i]->drop();
		}
		currentTextures.clear();

		for (u32 i=0; i<currentImages.size(); ++i)
			currentImages[i]->drop();
		currentImages.clear();

		currentImages.set_used(1);
		currentTextures.set_used(1);

//		core::stringc fontn = FontNames[fontIndex];

//		std::cout << "Test out - begin" << std::endl;
//		std::cout << "Out from return: " << make_nulc() << std::endl;
//		std::cout << "Test out - end" << std::endl;
//*
		DefaultWinTextFormat.fontname		= FontNames[fontIndex];
		DefaultWinTextFormat.fontSize		= fontSize;
		DefaultWinTextFormat.textureHeight	= textureHeight;
		DefaultWinTextFormat.textureWidth	= textureWidth;
		DefaultWinTextFormat.font_bold		= bold;
		DefaultWinTextFormat.font_italic	= italic;
		DefaultWinTextFormat.font_alpha		= alpha;
		DefaultWinTextFormat.font_antialias	= aa;
//		DefaultWinTextFormat.font_underline	= alpha;
//		DefaultWinTextFormat.font_strikeout	= alpha;
//		DefaultWinTextFormat.marginLeft		= 20;
//		DefaultWinTextFormat.marginRight	= 20;
//		DefaultWinTextFormat.marginTop		= 20;
//		DefaultWinTextFormat.marginBottom	= 20;

		DefaultWinTextFormat.text_vcenter	= true;
//		DefaultWinTextFormat.text_bottom	= true;
		DefaultWinTextFormat.text_center	= true;

//		DefaultWinTextFormat.text_autosize_texture_to_fit		= true;
//		DefaultWinTextFormat.text_autosize_texture_to_fit_advanced = true;

//		DefaultWinTextFormat.text_ellipses_textend	= true;
//		DefaultWinTextFormat.text_ellipses_wordend	= true;

		DefaultWinTextFormat.alpha_Color = RGB(0,0,0);
//		DefaultWinTextFormat.alpha_Color = RGB(255,0,0);
//		DefaultWinTextFormat.alpha_Color = RGB(0,255,0);
//		DefaultWinTextFormat.alpha_Color = RGB(0,0,255);

		DefaultWinTextFormat.text_multiline	= true;
		DefaultWinTextFormat.Color = RGB(255,255,0);
//		DefaultWinTextFormat.Color = RGB(255,0,255);
//		DefaultWinTextFormat.Color = RGB(0,255,255);
		DefaultWinTextFormat.Color = RGB(0,0,0);
//		DefaultWinTextFormat.Color = RGB(255,0,0);
//		DefaultWinTextFormat.Color = RGB(0,255,0);
//		DefaultWinTextFormat.Color = RGB(0,0,255);
//		DefaultWinTextFormat.Color = RGB(0,0,255);
//		DefaultWinTextFormat.Color = RGB(255,128,0);
//		DefaultWinTextFormat.Color.SetGradient();
//		DefaultWinTextFormat.fontColor.SetGradient();
//		DefaultWinTextFormat.fontColor.SetColors(RGB(0,0,128),RGB(255,0,255),RGB(124,0,0),RGB(53,120,20));

//		DefaultWinTextFormat.
//		DefaultWinTextFormat.text_texture_keep_aspect_ratio = true;

//		DefaultWinTextFormat.Gradientfill	= true;
//		DefaultWinTextFormat.Gradientfont	= true;

		/**/
/*
		DefaultTextFrame.Active = true;
		DefaultTextFrame.size = 1;
		DefaultTextFrame.distanceX = 5;
		DefaultTextFrame.distanceY = 5;
//		DefaultTextFrame.roundX = 40;
//		DefaultTextFrame.roundY = 40;
//		DefaultTextFrame.Color.SetColors(RGB(0,0,128),RGB(255,0,255),RGB(124,0,0),RGB(53,120,20));
//		DefaultTextFrame.Color.SetColor(RGB(150,180,75));
//		DefaultTextFrame.Color.Gradient = true;
//		DefaultTextFrame.Color.Active = false;
		DefaultTextFrame.fillColor.Active = true;
		DefaultTextFrame.fillColor.SetGradient();
//		DefaultTextFrame.fillColor.SetColor(RGB(50,80,5));
//		DefaultTextFrame.fillColor.SetColor(RGB(0,0,0));
//		DefaultTextFrame.fillColor.SetColor(RGB(255,255,255));
//		DefaultTextFrame.fillColor.SetColors(RGB(0,0,128),RGB(255,0,255),RGB(124,0,0),RGB(53,120,20));
//		DefaultTextFrame.fillColor.SetColorsVertical(RGB(0,0,0),RGB(255,255,255));
//		DefaultTextFrame.fillColor.SetColorsVertical(RGB(255,255,255),RGB(0,0,0));
//		DefaultTextFrame.fillColor.SetColorsHorizontal(RGB(0,0,0),RGB(255,255,255));
//		DefaultTextFrame.fillColor.SetColorsHorizontal(RGB(255,255,255),RGB(0,0,0));
//		DefaultTextFrame.fillColor.SetColorsDiagonal(RGB(0,0,0),RGB(255,255,255));
//		DefaultTextFrame.fillColor.SetColorsDiagonal(RGB(255,255,255),RGB(0,0,0));
//		DefaultTextFrame.fillColor.SetColors(RGB(255,255,255),RGB(0,0,0),7);
//		DefaultTextFrame.fillColor.Active = false;
//		DefaultTextFrame.fillColor.Active = false;

//		DefaultWinTextFormat.fontColor = DefaultTextFrame.Color;
/**/

		DefaultFrames.Frame[0].Active = true;
		DefaultFrames.Frame[0].size = 9;
		DefaultFrames.Frame[0].distanceX = 9;
		DefaultFrames.Frame[0].distanceY = 9;
		DefaultFrames.Frame[2].Active = true;
		DefaultFrames.Frame[2].size = 6;
		DefaultFrames.Frame[2].distanceX = 9;
		DefaultFrames.Frame[2].distanceY = 9;
		DefaultFrames.Frame[3].Active = true;
		DefaultFrames.Frame[3].Color.Active = false;
		DefaultFrames.Frame[3].fillColor.SetColor(RGB(34,56,56));
		DefaultFrames.Frame[4].Active = true;
		DefaultFrames.Frame[4].size = 0;
		DefaultFrames.Frame[4].distanceX = 9;
		DefaultFrames.Frame[4].distanceY = 9;
/**/
/*
		DefaultWinTextFormat.fontname		= FontNames[fontIndex];
//		DefaultWinTextFormat.fontSize		= fontSize;
		DefaultWinTextFormat.fontSize		= 8;
		DefaultWinTextFormat.textureWidth	= 256;//2;
		DefaultWinTextFormat.textureHeight	= 512;//2;
//		DefaultWinTextFormat.textureHeight	= textureHeight;
//		DefaultWinTextFormat.textureWidth	= textureWidth;
//		DefaultWinTextFormat.textureHeight	= 100;//2;
//		DefaultWinTextFormat.textureWidth	= 100;//2;
//		DefaultWinTextFormat.fontSize		= 8;
		DefaultWinTextFormat.font_bold		= true;

		DefaultWinTextFormat.text_top		= true;
		DefaultWinTextFormat.text_left		= true;
		DefaultWinTextFormat.text_vcenter	= false;
		DefaultWinTextFormat.text_center	= false;
		DefaultWinTextFormat.text_right		= false;
		DefaultWinTextFormat.text_bottom	= false;

		DefaultWinTextFormat.MAX_TEXTURE_SIZE = 800;

		DefaultWinTextFormat.marginLeft		= 10;
//		DefaultWinTextFormat.marginRight	= 10;
		DefaultWinTextFormat.marginTop		= 10;
//		DefaultWinTextFormat.marginBottom	= 20;

		DefaultWinTextFormat.font_antialias	= true;

		DefaultWinTextFormat.text_multiline	= true;
//		DefaultWinTextFormat.text_autosize_texture_to_fit = true;

//		DefaultWinTextFormat.text_vcenter = true;

//		DefaultWinTextFormat.Color.SetGradient();
//		DefaultWinTextFormat.fontColor.SetGradient();

/**/
		DefaultTextFrame.Active = true;
		DefaultTextFrame.size = 1;
		DefaultTextFrame.distanceX = 5;
		DefaultTextFrame.distanceY = 5;
		DefaultTextFrame.roundX = 10;
		DefaultTextFrame.roundY = 10;
		DefaultTextFrame.fillColor.SetActive();
//		DefaultTextFrame.fillColor.SetColor(RGB(128,128,0));
		DefaultTextFrame.fillColor.SetGradient();
/**/


		currentImages[0] = WinText2Image_DC(Device,L"Example TEXT\n\n This is my TEST text. Big Text. Big Text. Big Text. Big Text. Big Text. Big Text. Big Text. Big Text. Big Text. Big Text.");


			if (currentImages[0])
			{
				// add texture
				currentTextures[0] = Device->getVideoDriver()->addTexture("GUIFontImage",currentImages[0]);
				currentTextures[0]->grab();
			}
			else
			{
				Device->getLogger()->log("Something went wrong, aborting.");
				return false;
			}
		return true;
	}
#endif

	CFontTool::~CFontTool()
	{
#ifdef _IRR_WINDOWS_
		// destroy display context
		if (dc)
			DeleteDC(dc);
#endif

		// drop textures+images
		for (u32 i=0; i<currentTextures.size(); ++i)
			currentTextures[i]->drop();
		currentTextures.clear();

		for (u32 i=0; i<currentImages.size(); ++i)
			currentImages[i]->drop();
		currentImages.clear();
	}

	// Font Saver

	bool CFontTool::saveBitmapFont(const c8 *filename, const c8* format)
{
	if (currentImages.size() == 0)
	{
		Device->getLogger()->log("No image data to write, aborting.");
		return false;
	}

	core::stringc fn = filename;
	core::stringc imagename = filename;
	fn += ".xml";

	// write images and link to them
	for (u32 i=0; i<currentImages.size(); ++i)
	{
		imagename = filename;
		imagename += (s32)i;
		imagename += ".";
		imagename += format;
		Device->getVideoDriver()->writeImageToFile(currentImages[i],imagename.c_str());

	}


	Device->getLogger()->log("Bitmap font saved.");

	return true;
}

