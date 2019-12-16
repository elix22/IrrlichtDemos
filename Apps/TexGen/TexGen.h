#pragma once

#define L (wchar_t*)
#define R(A,B,C,D) core::rect<s32>(A,B,C,D)
#define S(A) core::stringw(A).c_str()

#define LOG(message) std::cout << message << std::endl

#define MAX( A, B ) (B<A)?A:B
#define MIN( A, B ) (B<A)?B:A

#define PREVIEW_WIDTH 64
#define PREVIEW_HEIGHT 64

#define EXPORT_PREVIEW_WIDTH 1024
#define EXPORT_PREVIEW_HEIGHT 1024

/// GUI IDs
enum GUI_IDS
{
	ID_GUI_TOOL_WINDOW = 20,
	ID_GUI_TOOL_PREVIEW = 21,
	ID_GUI_TOOL_LIST = 22,

	ID_GUI_PROPERTY_WINDOW = 50,
	ID_GUI_PROPERTY_TABLE = 51,

	ID_GUI_EXPORT_DIALOG = 75,

	ID_GUI_TOOLBAR = 100,
	ID_GUI_TOOLBAR_DEV_PERLIN = 101,
	ID_GUI_TOOLBAR_DEV_GRADIENT = 102,
	ID_GUI_TOOLBAR_DEV_COLOURIZE = 103,
	ID_GUI_TOOLBAR_DEV_COLOURIZE2 = 104,
	ID_GUI_TOOLBAR_DEV_BLEND = 105,
	ID_GUI_TOOLBAR_BUTTON_COUNT,

	ID_GUI_MENUBAR = 150,
	
	ID_GUI_MENUBAR_FILE = 151,
	ID_GUI_MENUBAR_FILE_NEW = 152,
	ID_GUI_MENUBAR_FILE_OPEN = 153,
	ID_GUI_MENUBAR_FILE_SAVE = 154,
	ID_GUI_MENUBAR_FILE_SAVE_AS = 155,
	ID_GUI_MENUBAR_FILE_EXPORT = 156,
	ID_GUI_MENUBAR_FILE_EXPORT_PREVIEW = 157,

	ID_GUI_MENUBAR_FILE_EXIT = 158,

	ID_GUI_MENUBAR_HELP = 160,
	ID_GUI_MENUBAR_HELP_WEB = 161,
	ID_GUI_MENUBAR_HELP_ABOUT = 162
};