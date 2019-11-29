/*
Copyright (C) 2008  Mathias Gottschlag

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in the
Software without restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#include "menu/MenuManager.h"
#include "graphic/GraphicsEngine.h"
#include "menu/Menu.h"
#include "core/InputManager.h"
#include "core/Logger.h"

namespace peak
{
	MenuManager *MenuManager::get(void)
	{
		static MenuManager menumgr;
		return &menumgr;
	}
	MenuManager::MenuManager()
	{
		activated = 0;
	}
	MenuManager::~MenuManager()
	{
	}

	bool MenuManager::init(void)
	{
		return true;
	}
	bool MenuManager::shutdown(void)
	{
		while (menus.size() > 0)
		{
			unloadMenu(menus[0]);
		}
		return true;
	}

	bool MenuManager::loadMenu(std::string name)
	{
		Menu *newmenu = new Menu;
		menus.push_back(newmenu);
		if (!newmenu->init(name))
		{
			menus.erase(menus.begin() + (menus.size() - 1));
			delete newmenu;
			return false;
		}
		return true;
	}
	void MenuManager::unloadMenu(std::string name)
	{
		for (unsigned int i = 0; i < menus.size(); i++)
		{
			if (menus[i]->getName() == name)
			{
				menus[i]->destroy();
				delete menus[i];
				menus.erase(menus.begin() + i);
				return;
			}
		}
	}
	void MenuManager::unloadMenu(Menu *menu)
	{
		for (unsigned int i = 0; i < menus.size(); i++)
		{
			if (menus[i] == menu)
			{
				menus[i]->destroy();
				delete menus[i];
				menus.erase(menus.begin() + i);
				return;
			}
		}
	}

	int MenuManager::getMenuCount(void)
	{
		return menus.size();
	}
	Menu *MenuManager::getMenu(int index)
	{
		return menus[index];
	}
	Menu *MenuManager::getMenu(std::string name)
	{
		for (unsigned int i = 0; i < menus.size(); i++)
		{
			if (menus[i]->getName() == name)
			{
				return menus[i];
			}
		}
		LERROR("Did not find menu \"%s\".\n", name.c_str());
		return 0;
	}
	Menu *MenuManager::getCurrentMenu(void)
	{
		return activated;
	}

	void MenuManager::activateMenu(std::string name)
	{
		if (activated)
		{
			activated->hide();
			activated = 0;
		}
		else
		{
			InputManager::get()->setInputEnabled(false);
		}
		for (unsigned int i = 0; i < menus.size(); i++)
		{
			if (menus[i]->getName() == name)
			{
				activated = menus[i];
				activated->show();
				InputManager::get()->setInputEnabled(true);
				return;
			}
		}
		// Menu not found - load it.
		if (name != "")
		{
			if (loadMenu(name))
			{
				activateMenu(name);
			}
			else
			{
				LERROR("Could not activate menu \"%s\".\n", name.c_str());
			}
		}
	}
	void MenuManager::activateMenu(Menu *menu)
	{
		if (activated)
		{
			activated->hide();
			activated = 0;
		}
		else
		{
			InputManager::get()->setInputEnabled(false);
		}
		if (menu)
		{
			activated = menu;
			activated->show();
		}
		else
		{
			InputManager::get()->setInputEnabled(true);
		}
	}
}
