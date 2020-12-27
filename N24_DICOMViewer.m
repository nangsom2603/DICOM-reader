function varargout = DICOMViewer(varargin)
% DICOMVIEWER MATLAB code for DICOMViewer.fig
%      DICOMVIEWER, by itself, creates a new DICOMVIEWER or raises the existing
%      singleton*.
%
%      H = DICOMVIEWER returns the handle to a new DICOMVIEWER or the handle to
%      the existing singleton*.
%
%      DICOMVIEWER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DICOMVIEWER.M with the given input arguments.
%
%      DICOMVIEWER('Property','Value',...) creates a new DICOMVIEWER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DICOMViewer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DICOMViewer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DICOMViewer

% Last Modified by GUIDE v2.5 14-Dec-2019 12:47:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DICOMViewer_OpeningFcn, ...
                   'gui_OutputFcn',  @DICOMViewer_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before DICOMViewer is made visible.
function DICOMViewer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DICOMViewer (see VARARGIN)
set(handles.ImagePlane1,'Parent',handles.figure1,'Position',get(handles.GeneralImage1,'Position'));
% set(handles.GeneralImage1,'Parent',handles.figure1,'Position',get(handles.GeneralSeries1,'Position'));
% set(handles.GeneralSeries1,'Parent',handles.figure1,'Position',get(handles.GeneralEquipment1,'Position'));
% set(handles.GeneralEquipment1,'Parent',handles.figure1,'Position',get(handles.sdf,'Position'));
% set(handles.sdf,'Parent',handles.figure1,'Position',get(handles.GeneralStudy,'Position'));
% Choose default command line output for DICOMViewer
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes DICOMViewer wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% global Name data1 data2;
% handles.Name = Name;
% handles.data1 = data1;
% handles.data2 = data2;
axes(handles.axes2)
matlabImage = imread('1.jpg');
image(matlabImage)
axis off
axis image
% --- Outputs from this function are returned to the command line.
function varargout = DICOMViewer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

       
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in Close.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to Close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Edit_Callback(hObject, eventdata, handles)
% hObject    handle to Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Use_Manual_Callback(hObject, eventdata, handles)
% hObject    handle to Use_Manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiwait(msgbox({'Software: version 3.0';...
    'The software includes 3 main functions:';'+ Display DICOM image (or sequence of inmages) and information its';...
    '+ Measure the distance between 2 points';'+ Zoom image';'Functions are shown quickly express over shortcuts:';...
    '+ Ctrl + O: Open image';'+ Ctrl + S: Save image';'+ Ctrl + C: Close Software';'+ Ctrl + M: Measure distance';'+ Ctrl + Z: Zoom';...
     '+ Ctrl + U: Use Manual'; '+ Ctrl + A: About'}));
 

% --------------------------------------------------------------------
function Team_24_Information_Callback(hObject, eventdata, handles)
% hObject    handle to Team_24_Information (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiwait(msgbox({'Hospital Information System';'Team 24:';'Nguyen Thi Hoa_gmail:hoahunter3060@gmail.com';...
    'Hoang Thi Thu Hien_gmail:Hienhoang261203@gmail.com';'Tran Manh Thang_gmail:Manhthangbn6789@gmail.com';'Lecture: Dr. Hoang Quang Huy'}));

% --------------------------------------------------------------------
function Measure_distance_Callback(hObject, eventdata, handles)
% hObject    handle to Measure_distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = imdistline(gca);
api = iptgetapi(h);
fcn = makeConstrainToRectFcn('imline',...
                              get(gca,'XLim'),get(gca,'YLim'));
api.setDragConstraintFcn(fcn);

% --------------------------------------------------------------------
function Zoom_Callback(hObject, eventdata, handles)
% hObject    handle to Zoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zoom on;

% --------------------------------------------------------------------
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[newname newfile]=uiputfile({'*.jpg','JPEG Files(*.jpg)';...
    '*.bmp','Bitmap Files(*.bmp)'; '*.tif','TIFF Files(*.tif)';...
    '*.png','PNG Files(*.png)'; '*.gif','GIF Files(*.gif)';...
    '*.*','all image file'},'luu anh da chon','anhkq/');
a3=uint8(255 * mat2gray(a3))
imwrite(a3,[newfile,newname]);
msgbox('Inmage has save done');

% --------------------------------------------------------------------
function Close_Callback(hObject, eventdata, handles)
% hObject    handle to Close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=questdlg('Would you like close?',...
    'choise menu',...
    'yes','no','yes');
switch t
    case 'yes'
        close
    case 'no'
end

% --------------------------------------------------------------------
function Single_image_Callback(hObject, eventdata, handles)
% hObject    handle to Single_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.listbox1,'string','');
% Hints: contents = cellstr(get(hObject,'String')) returns open contents as cell array
%        contents{get(hObject,'Value')} returns selected item from open

set(handles.SequenceImage,'visible','off');
set(handles.listbox1,'visible','off');
set(handles.GeneralStudy1,'visible','off');
              set(handles.sdf,'visible','off');
              set(handles.GeneralSeries1,'visible','off');
              set(handles.GeneralEquipment1,'visible','off');
              set(handles.GeneralImage1,'visible','off');
              set(handles.ImagePlane1,'visible','off');   
        [ten duongdan]=uigetfile('*.DCM','select the text file');
        if ~isequal(ten,0)
        fname=strcat(duongdan,ten);
        Readdicom=dicomread(fname);
        info=dicominfo(fname);
        ten=info;
        %Readdicom=Readdicom-1800;
        %% hien choose module
        set(handles.ChooseModule,'visible','on');
           set(handles. pushbutton3,'visible','on');
        %%
        P=Readdicom;
        Pb = imbinarize(P, graythresh(P));   %chuyen ve thang trang den
        %%
        Pb = bwareaopen(Pb, 250);                     %xoa cac cham nho hon gia tri n=100     
        %%
        Pb = imfill(Pb,'holes');   P(~Pb)=0;                   %phu trang lo trong
        %%
        se = strel('line',4,4); Pb = imerode(Pb,se);
        %chon dom trang lon nhat
        props=regionprops(Pb,'Area','PixelIdxList'); 
        [m,Index]=max([props.Area]);
        Pbm = zeros(size(P,1),size(P,2));
        Pbm(props(Index).PixelIdxList)=1;
        P(~Pbm)=0;
        clear props
        clear Index
        clear max
        axes(handles.axes1);
        imshow(Readdicom,[]);
        a1=Readdicom;
        a2=Readdicom;
        a4=Readdicom;
        %axes(handles.axes1,imshow);
        set(handles.e5,'string',info.PatientName.FamilyName);
        set(handles.e6,'string',info.PatientID); 
        set(handles.e7,'string',info.PatientBirthDate);
               tf = isfield(info, 'PatientWeight');
          if tf==0
           info.PatientWeight=' ';
          end
        set(handles.e8,'string',info.PatientWeight); 
         
        set(handles.e1,'string',info.StudyInstanceUID);
        set(handles.e2,'string',info.StudyDate);
         tf = isfield(info, 'StudyDescription');
          if tf==0
           info.StudyDescription=' ';
          end
        set(handles.e4,'string',info.StudyDescription); 
        set(handles.e3,'string',info.StudyTime);
        
         set(handles.e8,'string',info.PatientWeight);
         set(handles.e9,'string',info.Modality);
         set(handles.e10,'string',info.SeriesNumber);
         set(handles.e11,'string',info.SeriesDate);
         tf = isfield(info, 'SeriesTime');
          if tf==0
           info.SeriesTime=' ';
          end
         set(handles.e12,'string',info.SeriesTime);
         
        set(handles.e13,'string',info.Manufacturer);
        set(handles.e14,'string',info.StationName);

        
        set(handles.e16,'string',info.InstanceNumber);
        set(handles.e17,'string',info.ImageType);
        
        set(handles.e18,'string',info.AcquisitionDate);
        set(handles.e19,'string',info.AcquisitionTime);
        tf=isfield(info, 'AcquisitionNumber');
      if tf==0
          info.AcquisitionNumber=' ';
      end
        set(handles.e20,'string',info.AcquisitionNumber);
        set(handles.e21,'string',info.ContentTime);   
     tf=isfield(info, 'PixelSpacing');
      if tf==0
          info.PixelSpacing=' ';
      end
        t = info.PixelSpacing;
        t = t(1,1);
        set(handles.e22,'string',num2str(t));
        tf= isfield(info, 'SliceThickness');
      if tf==0
          info.SliceThickness=' ';
      end
        info.SliceThickness=' ';
        set(handles.e23,'string',num2str(info.SliceThickness));
        tf= isfield(info, 'SliceLocation');
      if tf==0
          info.SliceLocation=' ';
      end
        set(handles.e24,'string',num2str(info.SliceLocation));
        
        else
            msgbox('Please choose a DICOM image to run program');
        end
% --------------------------------------------------------------------
function Sequence_of_image_Callback(hObject, eventdata, handles)
% hObject    handle to Sequence_of_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fileFolder;
set(handles.GeneralStudy1,'visible','off');
              set(handles.sdf,'visible','off');
              set(handles.GeneralSeries1,'visible','off');
              set(handles.GeneralEquipment1,'visible','off');
              set(handles.GeneralImage1,'visible','off');
              set(handles.ImagePlane1,'visible','off');   
               set(handles.ChooseModule,'visible','on');
           set(handles. pushbutton3,'visible','on');
fileFolder=uigetdir('C:\Users\Admin\Desktop\CodeDicom\','Select Folder');
files = dir(fullfile(fileFolder,'*.dcm'));
fileNames = {files.name};
i=1; oke = true;
while (i< length(fileNames)+1)
    fname  =fullfile(fileFolder,fileNames{i});
    mri=uint16(dicomread(fname));
    matrix{i,1}=files(i).name;
    axes(handles.axes1);
    imshow(mri,[]); 
    i=i+1;
end
set(handles.listbox1,'string',matrix);
set(handles.listbox1,'visible','on');
set(handles.SequenceImage,'visible','on');
set(handles. pushbutton3,'visible','on');
function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GeneralStudy1.
function GeneralStudy_Callback(hObject, eventdata, handles)
% hObject    handle to GeneralStudy1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check1=get(handles.GeneralStudy,'value');
if check1==1
%                set(handles.Patient,'value',0);
%                set(handles.GeneralSeries,'value',0);
%                set(handles.GeneralEquipment,'value',0);
%                set(handles.GeneralImage,'value',0);
%                set(handles.ImagePlane,'value',0);
              set(handles.GeneralStudy1,'visible','on');
              set(handles.sdf,'visible','off');
              set(handles.GeneralSeries1,'visible','off');
              set(handles.GeneralEquipment1,'visible','off');
              set(handles.GeneralImage1,'visible','off');
              set(handles.ImagePlane1,'visible','off');             
end
% Hint: get(hObject,'Value') returns toggle state of GeneralStudy1


% --- Executes on button press in sdf.
function Patient_Callback(hObject, eventdata, handles)
% hObject    handle to sdf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sdf
check2=get(handles.Patient,'value');
if check2==1
%                set(handles.GeneralStudy,'value',0);
%                set(handles.GeneralSeries,'value',0);
%                set(handles.GeneralEquipment,'value',0);
%                set(handles.GeneralImage,'value',0);
%                set(handles.ImagePlane,'value',0);
              set(handles.sdf,'visible','on');
              set(handles.GeneralStudy1,'visible','off');
              set(handles.GeneralSeries1,'visible','off');
              set(handles.GeneralEquipment1,'visible','off');
              set(handles.GeneralImage1,'visible','off');
              set(handles.ImagePlane1,'visible','off');
              
end
% --- Executes on button press in GeneralSeries1.
function GeneralSeries_Callback(hObject, eventdata, handles)
% hObject    handle to GeneralSeries1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GeneralSeries1
check3=get(handles.GeneralSeries,'value');
if check3==1
%                set(handles.GeneralStudy,'value',0);
%                set(handles.Patient,'value',0);
%                set(handles.GeneralEquipment,'value',0);
%                set(handles.GeneralImage,'value',0);
%                set(handles.ImagePlane,'value',0);
              set(handles.GeneralSeries1,'visible','on');
              set(handles.GeneralStudy1,'visible','off');
              set(handles.sdf,'visible','off');
              set(handles.GeneralEquipment1,'visible','off');
              set(handles.GeneralImage1,'visible','off');
              set(handles.ImagePlane1,'visible','off');
end

% --- Executes on button press in GeneralEquipment1.
function GeneralEquipment_Callback(hObject, eventdata, handles)
% hObject    handle to GeneralEquipment1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GeneralEquipment1
check4=get(handles.GeneralEquipment,'value');
if check4==1
%                set(handles.GeneralStudy,'value',0);
%                set(handles.Patient,'value',0);
%                set(handles.GeneralSeries,'value',0);
%                set(handles.GeneralImage,'value',0);
%                set(handles.ImagePlane,'value',0);
               set(handles.GeneralEquipment1,'visible','on');
              set(handles.GeneralStudy1,'visible','off');
              set(handles.sdf,'visible','off');
              set(handles.GeneralSeries1,'visible','off');
              set(handles.GeneralImage1,'visible','off');
              set(handles.ImagePlane1,'visible','off');
end

% --- Executes on button press in GeneralImage1.
function GeneralImage_Callback(hObject, eventdata, handles)
% hObject    handle to GeneralImage1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GeneralImage1
check5 =get(handles.GeneralImage,'value');
if check5 ==1
%     set(handles.GeneralStudy,'value',0);
%                set(handles.Patient,'value',0);
%                set(handles.GeneralSeries,'value',0);
%                set(handles.GeneralEquipment,'value',0);
%                set(handles.ImagePlane,'value',0);
               set(handles.GeneralImage1,'visible','on');
              set(handles.GeneralStudy1,'visible','off');
              set(handles.sdf,'visible','off');
              set(handles.GeneralSeries1,'visible','off');
              set(handles.GeneralEquipment1,'visible','off');
              set(handles.ImagePlane1,'visible','off');
end

% --- Executes on button press in ImagePlane1.
function ImagePlane_Callback(hObject, eventdata, handles)
% hObject    handle to ImagePlane1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ImagePlane1

check6=get(handles.ImagePlane,'value');
if check6==1
%     set(handles.GeneralStudy,'value',0);
%                set(handles.Patient,'value',0);
%                set(handles.GeneralSeries,'value',0);
%                set(handles.GeneralEquipment,'value',0);
%                set(handles.GeneralImage,'value',0);
              set(handles.ImagePlane1,'visible','on');
              set(handles.GeneralStudy1,'visible','off');
              set(handles.sdf,'visible','off');
              set(handles.GeneralSeries1,'visible','off');
              set(handles.GeneralEquipment1,'visible','off');
              set(handles.GeneralImage1,'visible','off');
end
% --- Executes on button press in SpecificImage1.
% %%close
set(handles.Close,'visible','on');



function e22_Callback(hObject, eventdata, handles)
% hObject    handle to e22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e22 as text
%        str2double(get(hObject,'String')) returns contents of e22 as a double


% --- Executes during object creation, after setting all properties.
function e22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e23_Callback(hObject, eventdata, handles)
% hObject    handle to e23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e23 as text
%        str2double(get(hObject,'String')) returns contents of e23 as a double


% --- Executes during object creation, after setting all properties.
function e23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e24_Callback(hObject, eventdata, handles)
% hObject    handle to e24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e24 as text
%        str2double(get(hObject,'String')) returns contents of e24 as a double


% --- Executes during object creation, after setting all properties.
function e24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e17_Callback(hObject, eventdata, handles)
% hObject    handle to e17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e17 as text
%        str2double(get(hObject,'String')) returns contents of e17 as a double


% --- Executes during object creation, after setting all properties.
function e17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e18_Callback(hObject, eventdata, handles)
% hObject    handle to e18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e18 as text
%        str2double(get(hObject,'String')) returns contents of e18 as a double


% --- Executes during object creation, after setting all properties.
function e18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e19_Callback(hObject, eventdata, handles)
% hObject    handle to e19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e19 as text
%        str2double(get(hObject,'String')) returns contents of e19 as a double


% --- Executes during object creation, after setting all properties.
function e19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e20_Callback(hObject, eventdata, handles)
% hObject    handle to e20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e20 as text
%        str2double(get(hObject,'String')) returns contents of e20 as a double


% --- Executes during object creation, after setting all properties.
function e20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e21_Callback(hObject, eventdata, handles)
% hObject    handle to e21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e21 as text
%        str2double(get(hObject,'String')) returns contents of e21 as a double


% --- Executes during object creation, after setting all properties.
function e21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function e6_Callback(hObject, eventdata, handles)
% hObject    handle to e6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e6 as text
%        str2double(get(hObject,'String')) returns contents of e6 as a double


% --- Executes during object creation, after setting all properties.
function e6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e5_Callback(hObject, eventdata, handles)
% hObject    handle to e5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e5 as text
%        str2double(get(hObject,'String')) returns contents of e5 as a double


% --- Executes during object creation, after setting all properties.
function e5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e7_Callback(hObject, eventdata, handles)
% hObject    handle to e7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e7 as text
%        str2double(get(hObject,'String')) returns contents of e7 as a double


% --- Executes during object creation, after setting all properties.
function e7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e8_Callback(hObject, eventdata, handles)
% hObject    handle to e8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e8 as text
%        str2double(get(hObject,'String')) returns contents of e8 as a double


% --- Executes during object creation, after setting all properties.
function e8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e13_Callback(hObject, eventdata, handles)
% hObject    handle to e13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e13 as text
%        str2double(get(hObject,'String')) returns contents of e13 as a double


% --- Executes during object creation, after setting all properties.
function e13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e14_Callback(hObject, eventdata, handles)
% hObject    handle to e14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e14 as text
%        str2double(get(hObject,'String')) returns contents of e14 as a double


% --- Executes during object creation, after setting all properties.
function e14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e10_Callback(hObject, eventdata, handles)
% hObject    handle to e10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e10 as text
%        str2double(get(hObject,'String')) returns contents of e10 as a double


% --- Executes during object creation, after setting all properties.
function e10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e9_Callback(hObject, eventdata, handles)
% hObject    handle to e9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e9 as text
%        str2double(get(hObject,'String')) returns contents of e9 as a double


% --- Executes during object creation, after setting all properties.
function e9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e11_Callback(hObject, eventdata, handles)
% hObject    handle to e11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e11 as text
%        str2double(get(hObject,'String')) returns contents of e11 as a double


% --- Executes during object creation, after setting all properties.
function e11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e12_Callback(hObject, eventdata, handles)
% hObject    handle to e12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e12 as text
%        str2double(get(hObject,'String')) returns contents of e12 as a double


% --- Executes during object creation, after setting all properties.
function e12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e4_Callback(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e4 as text
%        str2double(get(hObject,'String')) returns contents of e4 as a double


% --- Executes during object creation, after setting all properties.
function e4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e3_Callback(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e3 as text
%        str2double(get(hObject,'String')) returns contents of e3 as a double


% --- Executes during object creation, after setting all properties.
function e3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e1_Callback(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e1 as text
%        str2double(get(hObject,'String')) returns contents of e1 as a double


% --- Executes during object creation, after setting all properties.
function e1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e2_Callback(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e2 as text
%        str2double(get(hObject,'String')) returns contents of e2 as a double


% --- Executes during object creation, after setting all properties.
function e2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('Do you want to exit?', ...
	'Exit', ...
	'Yes','No','No');
% Handle response
switch choice
    case 'Yes'
        close;
    case 'No'
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
global fileFolder
global a1 a2 a4
image_name1=get(handles.listbox1,'value');
image_name2=get(handles.listbox1,'String');
image_name=image_name2{image_name1,1};
image_name=strcat(fileFolder,'\',image_name);
info=dicominfo(image_name);
        set(handles.e5,'string',info.PatientName.FamilyName);
        set(handles.e6,'string',info.PatientID); 
        set(handles.e7,'string',info.PatientBirthDate);
               tf = isfield(info, 'PatientWeight');
          if tf==0
           info.PatientWeight=' ';
          end
        set(handles.e8,'string',info.PatientWeight); 
         
        set(handles.e1,'string',info.StudyInstanceUID);
        set(handles.e2,'string',info.StudyDate);
         tf = isfield(info, 'StudyDescription');
          if tf==0
           info.StudyDescription=' ';
          end
        set(handles.e4,'string',info.StudyDescription); 
        set(handles.e3,'string',info.StudyTime);
        
         set(handles.e8,'string',info.PatientWeight);
         set(handles.e9,'string',info.Modality);
         set(handles.e10,'string',info.SeriesNumber);
         set(handles.e11,'string',info.SeriesDate);
         tf = isfield(info, 'SeriesTime');
          if tf==0
           info.SeriesTime=' ';
          end
         set(handles.e12,'string',info.SeriesTime);
         
        set(handles.e13,'string',info.Manufacturer);
        set(handles.e14,'string',info.StationName);

        
        set(handles.e16,'string',info.InstanceNumber);
        set(handles.e17,'string',info.ImageType);
        
        set(handles.e18,'string',info.AcquisitionDate);
        set(handles.e19,'string',info.AcquisitionTime);
        tf=isfield(info, 'AcquisitionNumber');
      if tf==0
          info.AcquisitionNumber=' ';
      end
        set(handles.e20,'string',info.AcquisitionNumber);
        set(handles.e21,'string',info.ContentTime);   
     tf=isfield(info, 'PixelSpacing');
      if tf==0
          info.PixelSpacing=' ';
      end
        t = info.PixelSpacing;
        t = t(1,1);
        set(handles.e22,'string',num2str(t));
        tf= isfield(info, 'SliceThickness');
      if tf==0
          info.SliceThickness=' ';
      end
        info.SliceThickness=' ';
        set(handles.e23,'string',num2str(info.SliceThickness));
        tf= isfield(info, 'SliceLocation');
      if tf==0
          info.SliceLocation=' ';
      end
        set(handles.e24,'string',num2str(info.SliceLocation));
%%        
        Readdicom=dicomread(image_name);
        ten=info; 

        P=Readdicom;
        Pb = imbinarize(P, graythresh(P));   %chuyen ve thang trang den

        Pb = bwareaopen(Pb, 250);                     %xoa cac cham nho hon gia tri n=100     

        Pb = imfill(Pb,'holes');   P(~Pb)=0;                   %phu trang lo trong

        se = strel('line',4,4); Pb = imerode(Pb,se);

        props=regionprops(Pb,'Area','PixelIdxList'); 
        [m,Index]=max([props.Area]);
        Pbm = zeros(size(P,1),size(P,2));
        Pbm(props(Index).PixelIdxList)=1;
        P(~Pbm)=0;
        clear props
        clear Index
        clear max
        axes(handles.axes1);
        imshow(Readdicom,[]);
        a1=Readdicom;
        a2=Readdicom;
        a4=Readdicom;
        
% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
