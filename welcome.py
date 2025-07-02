from tkinter import *
from tkinter import messagebox 
from tkinter import ttk
from PIL import Image,ImageTk

import registerscreen


class window:
    def __init__(self) : 
        self.root= Tk()
        self.root.title("welcome")
        self.root.geometry('20x200')
        disp_width= self.root.winfo_screenwidth()
        disp_height= self.root.winfo_screenheight()
        self.root.geometry(f'{disp_width}x{disp_height}')
        img= Image.open('neoncopy1.jpg')
        img_new= img.resize((disp_width,disp_height))
        img_new=img.resize((700,700))
        #1b0226                            #2a033b frame1 backgr self labe;1  roboto 20 normal
        #12021a color 2
        img_tk= ImageTk.PhotoImage(img_new) 
        img_label= Label(self.root,image=img_tk)
        img_label.place(x=0,y=0)
        self.frame1=Frame(self.root,background="#FBECB2" ,width=2000,height=800)
        self.frame1.place(x=700,y=0)
        #self.label1=Label(self.root,text="Welcome to Sipster",font=("Copperplate Gothic Light", 40 ,"bold"),background="#43095c" ,   foreground="black")
        #self.label1.place(x=50,y=60)
        # self.frame2=Frame(self.root,background="#F8BDEB",width=20,height=30)
        # self.frame2.place(x=0,y=700)
        # self.frame3=Frame(self.root,background="#F8BDEB",width=30,height=700)
        # self.frame3.place(x=700,y=30)
        # self.frame4=Frame(self.root,background="#5272F2",width=730,height=30)
        # self.frame4.place(x=0,y=730)
        # self.frame4=Frame(self.root,background="#5272F2",width=30,height=700)
        # self.frame4.place(x=730,y=60)
        self.frame5=Frame(self.root,background="#FBECB2",width=1200,height=30)
        self.frame5.place(x=0,y=760)
        self.label1=Label(self.frame1,text="Welcome to Sipster",background='#FBECB2',font=("Aptos", 30,"bold",UNDERLINE) ,foreground="black")
        self.label1.place(x=150,y=60)
        self.label2=Label(self.frame1,text="Indulge in a symphony of flavors at Sipster, where",background='#FBECB2',font= ("Robot", 20 , "normal") ,foreground="black")
        self.label2.place(x=15,y=250)
        self.label3=Label(self.frame1,text="each sip and bite is crafted to tantalize your taste ",background='#FBECB2',font= ("Roboto","20","normal") ,foreground="black")
        self.label3.place(x=10,y=300)
        self.label4=Label(self.frame1,text=" buds. From our rich, aromatic coffees to our ",background='#FBECB2',font= ("Roboto","20","normal") ,foreground="black")
        self.label4.place(x=10,y=350)
        self.label5=Label(self.frame1,text="decadent donuts and wholesome snacks, every visit ",background='#FBECB2',font= ("Roboto","20","normal") ,foreground="black")
        self.label5.place(x=10,y=400)
        self.label6=Label(self.frame1,text=" promises a delightful journey of culinary pleasure.",background='#FBECB2',font= ("Roboto","20","normal") ,foreground="black")
        self.label6.place(x=10,y=450)
        self.btn=Button(self.frame1, text=">",  background="white"    , foreground="Black"  , activebackground="#65e7ff"    , activeforeground="Black" , highlightthickness=2, highlightbackground="#05d7ff"
                      ,  highlightcolor="White", width=3, height=1,font=('Aptos',15, "bold"),command=self.next_screen)
        self.btn.place(x=550,y=600)
        
        
        
       
        
        
        
       
       
        




        
        self.root.mainloop()
    def next_screen(self):
        self.root.destroy()
        registerscreen.homepage()

        


        
            
      


if __name__=="__main__":
   obj=window()



