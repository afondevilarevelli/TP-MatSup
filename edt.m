function varargout = edt(varargin)
% EDT MATLAB code for edt.fig
%      EDT, by itself, creates a new EDT or raises the existing
%      singleton*.
%
%      H = EDT returns the handle to a new EDT or the handle to
%      the existing singleton*.
%
%      EDT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EDT.M with the given input arguments.
%
%      EDT('Property','Value',...) creates a new EDT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before edt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to edt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help edt

% Last Modified by GUIDE v2.5 20-Apr-2019 13:19:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @edt_OpeningFcn, ...
                   'gui_OutputFcn',  @edt_OutputFcn, ...
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


% --- Executes just before edt is made visible.
function edt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to edt (see VARARGIN)

% Choose default command line output for edt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes edt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = edt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if hObject==handles.radiobutton1 
    set(handles.edit1,'enable','on')
    set(handles.edit2,'enable','on')
    set(handles.text7,'String','')
else
    set(handles.edit1,'enable','off')
    set(handles.edit2,'enable','off')
    set(handles.edit1,'String','')
    set(handles.edit2,'String','')
end
if hObject==handles.radiobutton2 
    set(handles.edit3,'enable','on')
    set(handles.edit4,'enable','on')
    set(handles.text7,'String','')
else
    set(handles.edit3,'enable','off')
    set(handles.edit4,'enable','off')
    set(handles.edit3,'String','')
    set(handles.edit4,'String','')
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobutton1,'Value')==1
    
    numBin=complex(str2num(get(handles.edit1,'String')),str2num(get(handles.edit2,'String')))
    numPolar=aPolar(numBin)
    val2mostrar=strcat('[',num2str(numPolar.modulo),',',num2str(numPolar.angulo),']')
    set(handles.text7,'String',val2mostrar)
    set(handles.edit3,'String',num2str(numPolar.modulo))
    set(handles.edit4,'String',num2str(numPolar.angulo))
    set(handles.edit3,'enable','on')
    set(handles.edit4,'enable','on')
    set(handles.radiobutton2,'Value',1)
    set(handles.edit1,'enable','off')
    set(handles.edit2,'enable','off')
else
    msgbox('El numero ya est� en Polar','Mensaje')
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobutton2,'Value')==1
    numPolar=createPolar(str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')));
    numBin=aBinomica(numPolar)
    val2mostrar=strcat('(',num2str(real(numBin)),',',num2str(imag(numBin)),')')
    set(handles.text7,'String',val2mostrar)
    set(handles.edit1,'String',num2str(real(numBin)))
    set(handles.edit2,'String',num2str(imag(numBin)))
    set(handles.edit1,'enable','on')
    set(handles.edit2,'enable','on')
    set(handles.radiobutton1,'Value',1)
    set(handles.edit3,'enable','off')
    set(handles.edit4,'enable','off')

else
    msgbox('El numero ya est� en Forma Binomica','Mensaje')
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if  get(handles.radiobutton1,'Value')==1
    result=strcat('(',get(handles.edit1,'String'),',',get(handles.edit2,'String'),')');
    set(handles.text7,'String',result);
else
    result=strcat('[',get(handles.edit3,'String'),',',get(handles.edit4,'String'),']');
    set(handles.text7,'String',result);
end
% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
