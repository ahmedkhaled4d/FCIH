from tkinter import *
import functions
class Application(Frame):

    def __init__(self, master):

        Frame.__init__(self, master)
        self.grid()
        self.create_widgets()
        self.create_menu()
        root.resizable(width=False, height=False)
        root.minsize(250, 600)
        root["bg"]='white'



    def donothing(self):
        filewin = Toplevel(root)
        Lb1 = Listbox(filewin,width=50)
        #Lb1.winfo_width(200)


        Lb1.pack()

    def developers(self):
        filewin = Toplevel(root)
        Lb1 = Listbox(filewin, width=50)
        # Lb1.winfo_width(200)
        Lb1.insert(1, "Ahmed Khaled ")
        Lb1.insert(2, "Hisham El amiar")
        Lb1.insert(3, "Mahmoud hamdy")
        Lb1.insert(4, "Ahmed Eid")
        Lb1.insert(5, "Abdall Gamal")
        Lb1.insert(6, "Essam ")

        Lb1.pack()

    def create_menu(self):
        menubar = Menu(root)
        filemenu = Menu(menubar, tearoff=0)
        filemenu.add_command(label="New", command=self.donothing)
        filemenu.add_command(label="Open", command=self.donothing)

        filemenu.add_separator()

        filemenu.add_command(label="Exit", command=root.quit)
        menubar.add_cascade(label="File", menu=filemenu)
        editmenu = Menu(menubar, tearoff=0)
        editmenu.add_command(label="Undo", command=self.donothing)

        editmenu.add_separator()

        editmenu.add_command(label="Cut", command=self.donothing)
        editmenu.add_command(label="Copy", command=self.donothing)
        editmenu.add_command(label="Paste", command=self.donothing)
        editmenu.add_command(label="Delete", command=self.donothing)
        editmenu.add_command(label="Select All", command=self.donothing)

        menubar.add_cascade(label="Edit", menu=editmenu)
        helpmenu = Menu(menubar, tearoff=0)

        helpmenu.add_command(label="Developers", command=self.developers)
        menubar.add_cascade(label="Help", menu=helpmenu)

        root.config(menu=menubar)
        root.mainloop();

    def create_widgets(self):

        font = "Comic Sans MS";
        self.lbl_Text = Label(self,text = "Welcome Image Painting Program \n",fg="blue" ,font = (font,16) )
        self.lbl_Text.grid(row = 0,column = 2 )

        self.btn_login = Button(self, text = "Paint", command = self.login,fg="red",font = (font,12),relief=GROOVE,borderwidth=3,padx=45,pady=6)
        self.btn_login.grid(row = 1, column = 1)

        self.btn_login = Button(self, text = "save shapes", command = functions.saveimage(),fg="red",font = (font,12),relief=GROOVE,borderwidth=3,padx=20,pady=6)
        self.btn_login.grid(row = 2, column = 1)

        self.lbl_loginResult = Label(self)
        self.lbl_loginResult.grid(row = 5, column = 0, columnspan = 2, sticky = W)
        
    def login(self):

        self.lbl_Text["text"] = functions.freePint();
        self.lbl_Text["fg"] = "red";


root = Tk(className='Image Painting program');
app = Application(root);
root.mainloop();



