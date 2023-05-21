from  tkinter import *
import tkinter
import customtkinter
import subprocess

def install_winget():
    subprocess.run(["powershell.exe", "-ExecutionPolicy", "Bypass", "./winget.ps1"])
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
    "Microsoft Office 2021"
]
winget_apps = [
    "winget install -e --id Google.Chrome",
    "winget install -e --id Valve.Steam",
    "winget install -e --id Discord.Discord",
    "winget install -e --id VideoLAN.VLC",
    "winget install -e --id Microsoft.VisualStudioCode",
    "winget install -e --id EpicGames.EpicGamesLauncher",
    "winget install -e --id Ubisoft.Connect",
    "winget install -e --id ElectronicArts.EADesktop",
    "winget install -e --id Python.Python.3.10",
    "winget install -e --id Asus.ArmouryCrate",
    "winget install -e --id Guru3D.Afterburner",
    "winget install -e --id Nvidia.GeForceExperience",
    "winget install -e --id Microsoft.VCRedist.2015+.x64 \
    winget install -e --id Microsoft.VCRedist.2010.x64 \
    winget install -e --id Microsoft.DirectX \
    winget install -e --id Microsoft.DotNet.Framework.DeveloperPack_4",
    "winget install -e --id qBittorrent.qBittorrent",
    "winget install -e --id OpenJS.NodeJS",
    "winget install -e --id SoftDeluxe.FreeDownloadManager",
    "winget install -e --id RARLab.WinRAR",
    "winget install -e --id Unity.UnityHub",
    "winget install -e --id BlenderFoundation.Blender",
    "winget install -e --id Nvidia.CUDA -v 11.2",
    "winget install -e --id Intel.IntelDriverAndSupportAssistant",
    "winget install -e --id Logitech.GHUB",
    "cd ./Apps/Office/ \
    OInstall.exe",
]

customtkinter.set_appearance_mode("System")  # Modes: system (default), light, dark
customtkinter.set_default_color_theme("dark-blue")  # Themes: blue (default), dark-blue, green

app = customtkinter.CTk()  # create CTk window like you do with the Tk window
app.geometry("900x450")
checkboxes = []
for i, app_name in enumerate(app_names):
    checkbox = customtkinter.CTkCheckBox(master=app, text=f"{i+1}.{app_name}", checkbox_width=15, checkbox_height=15, border_width=1)
    checkbox.grid(row=i % 8, column=i // 8, padx=10, pady=10, sticky="w")
    checkboxes.append(checkbox)
# def check_checked():
#     for i, checkbox in enumerate(checkboxes):
#         if checkbox.get():
#             print(f"Checkbox {i+1} is checked.")
def install_apps():
    for i, checkbox in enumerate(checkboxes):
        if checkbox.is_checked():
            app_name = app_names[i]
            winget_cmd = winget_apps[i]
            print(f"Installing {app_name}...")
            subprocess.run(winget_cmd, shell=True)
check_button = customtkinter.CTkButton(app, text="Install", command=install_apps,width=150,height=50)
check_button.grid(row=10, column=0, columnspan=3, pady=10)
app.mainloop()