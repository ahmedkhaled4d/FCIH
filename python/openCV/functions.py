import numpy as np
import cv2
def nothing():
   pass
def Rvalue(x):
    #print('R=',x)
    return x
def Gvalue(x):
    #print('G=',x)
    return x
def Bvalue(x):
    #print('B=',x)
    return x

img = np.zeros((512, 512, 3), np.uint8)
drawing = False # true if mouse is pressed
mode = True # if True, draw rectangle. Press 'm' to toggle to curve
ix,iy = -1,-1

def draw_circle(event,x,y,flags,param):
    global ix,iy,drawing,mode

    if event == cv2.EVENT_LBUTTONDOWN:
        drawing = True
        ix,iy = x,y

    elif event == cv2.EVENT_MOUSEMOVE:
        if drawing == True:
            if mode == True:
                cv2.rectangle(img,(ix,iy),(x,y),(0,255,0),-1)
            else:
                cv2.circle(img,(x,y),5,(0,0,255),-1)

    elif event == cv2.EVENT_LBUTTONUP:
        drawing = False
        if mode == True:
            cv2.rectangle(img,(ix,iy),(x,y),(0,255,0),-1)
        else:
            cv2.circle(img,(x,y),5,(0,0,255),-1)

def freePint():
   cv2.namedWindow('image')
   switch = '0 : OFF \n1 : ON'
   cv2.createTrackbar(switch, 'image', 0, 1, nothing)
   cv2.setMouseCallback('image', draw_circle)

   while (1):
      cv2.imshow('image', img)
      s = cv2.getTrackbarPos(switch, 'image')
      k = cv2.waitKey(1)
      if s == 0:
         mode = False
      if s == 1:
         mode = True
      elif k == 27:
         break

   cv2.destroyAllWindows()
def trackbar():
   # Create a black image, a window
   img = np.zeros((300,512,3), np.uint8)
   cv2.namedWindow('image')

   # create trackbars for color change
   cv2.createTrackbar('R','image',0,255,Rvalue)
   cv2.createTrackbar('G','image',0,255,Gvalue)
   cv2.createTrackbar('B','image',0,255,Bvalue)

   # create switch for ON/OFF functionality
   switch = '0 : OFF \n1 : ON'
   cv2.createTrackbar(switch, 'image',0,1,nothing)

   while(1):
       cv2.imshow('image',img)
       k = cv2.waitKey(1)
       if k == 27:
           break

       # get current positions of four trackbars
       r = cv2.getTrackbarPos('R','image')
       g = cv2.getTrackbarPos('G','image')
       b = cv2.getTrackbarPos('B','image')
       s = cv2.getTrackbarPos(switch,'image')

       if s == 0:
           img[:] = 0
       else:
           img[:] = [b,g,r]

   cv2.destroyAllWindows();


def dcircle():
   trackbar()
   img = np.zeros((512, 512, 3), np.uint8)
   img = cv2.circle(img, (447, 63), 63, (Rvalue, Gvalue, Bvalue), -1)
   cv2.imshow('figer circle', img)


def print_func(par):
   return ("Hello" , par);


def drowit():
   # Create a black image
   img = np.zeros((512, 512, 3), np.uint8)
   # cv2.imshow('fig1',img)
   # cv2.waitKey()
   # Draw a diagonal blue line with thickness of 5 px
   img = cv2.line(img, (0, 0), (511, 511), (255, 0, 0), 10)
   img = cv2.rectangle(img, (384, 0), (510, 128), (0, 255, 0), 3)
   img = cv2.circle(img, (447, 63), 63, (0, 120, 255), -1)
   font = cv2.FONT_HERSHEY_SIMPLEX
   cv2.putText(img, 'OpenCV', (10, 500), font, 4, (255, 255, 255), 2)

   cv2.imshow('fig1', img)

def saveimage ():
    cv2.imwrite("image_processed.png", img) #the name of new image



