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