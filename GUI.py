from  tkinter import *
import tkinter as tk
import customtkinter
from customtkinter import *
import subprocess
import os

checked = []
exe_path = os.path.dirname(os.path.abspath(__file__))
winget_script = None
oinstall_exe = None
# Search for .ps1 script in the same directory
for root, _, files in os.walk(exe_path):
    if "OInstall.exe" in files:
        oinstall_exe = os.path.join(root, "OInstall.exe")
        pass
    if "winget.ps1" in files:
        winget_script = os.path.join(root, "winget.ps1")
        pass
def install_winget():
    subprocess.run(["powershell.exe", "-ExecutionPolicy", "Bypass", f"{winget_script}"])
install_winget()
app_names = [
    "Chrome",
    "Steam",
    "Discord",
    "VLC",
    "Visual Studio Code",
    "Epic Games",
    "Uplay",
    "EA App",
    "Python (3.10)",
    "Armoury Crate",
    "Msi Afterburner",
    "GeForce Experience",
    "Gaming stuff / Apps (DX, Runtimes, Frameworks)",
    "qBittorrent",
    "NodeJS",
    "Free Download Manager",
    "WinRAR",
    "Unity Hub",
    "Blender",
    "CUDA (11.2 dosen't work, 11.3 and higher works)",
    "Intel Driver And Support Assistant",
    "Logitech G-HUB",
    "Microsoft Office 2021",
    "Git (have to add)",
    "MkvToolNIX(have to add)",
    "Notepad++(have to add)",
    "Hand Brake(have to add)"
]
winget_apps = [
    "winget install -h -e --id Google.Chrome",
    "winget install -h -e --id Valve.Steam",
    "winget install -h -e --id Discord.Discord",
    "winget install -h -e --id VideoLAN.VLC",
    "winget install -h -e --id Microsoft.VisualStudioCode",
    "winget install -h -e --id EpicGames.EpicGamesLauncher",
    "winget install -h -e --id Ubisoft.Connect",
    "winget install -h -e --id ElectronicArts.EADesktop",
    "winget install -h -e --id Python.Python.3.10",
    "winget install -h -e --id Asus.ArmouryCrate",
    "winget install -h -e --id Guru3D.Afterburner",
    "winget install -h -e --id Nvidia.GeForceExperience",
    "winget install -h -e --id Microsoft.VCRedist.2015+.x64 \
    winget install -h -e --id Microsoft.VCRedist.2010.x64 \
    winget install -h -e --id Microsoft.DirectX \
    winget install -h -e --id Microsoft.DotNet.Framework.DeveloperPack_4",
    "winget install -h -e --id qBittorrent.qBittorrent",
    "winget install -h -e --id OpenJS.NodeJS",
    "winget install -h -e --id SoftDeluxe.FreeDownloadManager",
    "winget install -h -e --id RARLab.WinRAR",
    "winget install -h -e --id Unity.UnityHub",
    "winget install -h -e --id BlenderFoundation.Blender",
    "winget install -h -e --id Nvidia.CUDA -v 11.2",
    "winget install -h -e --id Intel.IntelDriverAndSupportAssistant",
    "winget install -h -e --id Logitech.GHUB",
    f"{oinstall_exe}",
]

  # Modes: system (default), light, dark
customtkinter.set_default_color_theme("dark-blue")
app = customtkinter.CTk()  # create CTk window like you do with the Tk window
app.geometry("1300x450")
checkboxes = []
for i, app_name in enumerate(app_names):
    checkbox = customtkinter.CTkCheckBox(master=app, text=f"{app_name}", checkbox_width=15, checkbox_height=15, border_width=1)
    checkbox.grid(row=i % 8, column=i // 8, padx=10, pady=10, sticky="w")
    checkboxes.append(checkbox)

# def check_checked():
#     for i, checkbox in enumerate(checkboxes):
#         if checkbox.get() == 1:
#             print(f"Checkbox {i+1} is checked.")
settings_frame_visible = False  # Flag to track the visibility of the settings frame

def open_settings():
    global settings_frame, settings_frame_visible  # Declare settings_frame and settings_frame_visible as global variables

    if settings_frame_visible:
        settings_frame.destroy()  # Close the settings frame if it's already open
        settings_frame_visible = False
    else:
        settings_frame = Canvas(app, width=200, height=200,bg="#1A1A1A",highlightthickness=0)
        settings_frame.place(x=700, y=300)

        switch_1 = customtkinter.CTkSwitch(settings_frame, text="Silent installation (installs to default installer location)",fg_color="black",border_width=0)
        switch_1.grid(row=0, column=0,sticky="w")

        def switch_theme():
            if theme_switch.get() == 1:
                customtkinter.set_appearance_mode("light")
                settings_frame.configure(bg="white")  # Set light theme
            else:
                customtkinter.set_appearance_mode("dark")
                settings_frame.configure(bg="#1A1A1A")  # Set dark theme
        theme_switch = customtkinter.CTkSwitch(settings_frame, text="Light Theme (not that workinnn)",fg_color="black",border_width=0)
        theme_switch.grid(row=1,sticky="w", pady=10)
        theme_switch.configure(command=switch_theme)       
        settings_frame_visible = True

def install_apps():
    check_button.configure(state="disabled")  # Disable the install button
    for checkbox in checkboxes:
        checkbox.configure(state="disabled")  # Disable all checkboxes

    for i, checkbox in enumerate(checkboxes):
        if checkbox.get() == 1:
            app_name = app_names[i]
            winget_cmd = winget_apps[i]
            print(f"Installing {app_name}...")
            subprocess.run(winget_cmd, shell=True)

    check_button.configure(state="normal")  # Enable the install button
    for checkbox in checkboxes:
        checkbox.configure(state="normal")  # Enable all checkboxes

check_button = customtkinter.CTkButton(app, text="Install", command=install_apps,width=150,height=50)
check_button.grid(row=10, column=0, columnspan=3, pady=10)
settings_image = PhotoImage(file = "./icons8-settings-16.png")
settings_button = customtkinter.CTkButton(app,image = settings_image,height=30,width=30,text="",border_width=0,command=open_settings,bg_color="transparent")
settings_button.grid(row=10,column= 2,columnspan=1,padx=10)
app.mainloop()