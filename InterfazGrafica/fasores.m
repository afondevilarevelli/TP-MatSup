function varargout = fasores(varargin)
addpath('../src');
% FASORES MATLAB code for fasores.fig
%      FASORES, by itself, creates a new FASORES or raises the existing
%      singleton*.
%
%      H = FASORES returns the handle to a new FASORES or the handle to
%      the existing singleton*.
%
%      FASORES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FASORES.M with the given input arguments.
%
%      FASORES('Property','Value',...) creates a new FASORES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fasores_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fasores_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fasores

% Last Modified by GUIDE v2.5 24-May-2019 15:25:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fasores_OpeningFcn, ...
                   'gui_OutputFcn',  @fasores_OutputFcn, ...
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


% --- Executes just before fasores is made visible.
function fasores_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fasores (see VARARGIN)

% Choose default command line output for fasores
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fasores wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fasores_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(fasores);
InterfazGrafica;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funcion1String = handles.funcion1.String;
funcion2String = handles.funcion2.String;
ampl1String = handles.amplitud1.String;
ampl2String = handles.amplitud2.String;
fase1String = handles.fase1.String;
fase2String = handles.fase2.String;
frec1String = handles.frecuencia1.String;
frec2String = handles.frecuencia2.String;
ampl1 = str2num(ampl1String);
ampl2 = str2num(ampl2String);
fase1 = str2num(fase1String);
fase2 = str2num(fase2String);
frec1 = str2num(frec1String);
frec2 = str2num(frec2String);
if isnumeric(ampl1) && isnumeric(ampl2) && isnumeric(fase1) && isnumeric(fase2) && isnumeric(frec1) && isnumeric(frec2)
    if(strcmp(funcion1String,'seno'))
        fase1 = fase1 - pi/2;
    end
    if(strcmp(funcion2String,'seno'))
        fase2 = fase2 - pi/2;
    end
    if ampl1 == 0 || ampl2 == 0
        resultado = '0';
    else
        resultado = sumaFasores(ampl1,frec1,fase1, ampl2,frec2,fase2);
    end
    set(handles.resultado, 'String', resultado);
end
guidata(hObject, handles);



function frecuencia2_Callback(hObject, eventdata, handles)
% hObject    handle to frecuencia2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuencia2 as text
%        str2double(get(hObject,'String')) returns contents of frecuencia2 as a double


% --- Executes during object creation, after setting all properties.
function frecuencia2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuencia2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fase2_Callback(hObject, eventdata, handles)
% hObject    handle to fase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fase2 as text
%        str2double(get(hObject,'String')) returns contents of fase2 as a double


% --- Executes during object creation, after setting all properties.
function fase2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amplitud2_Callback(hObject, eventdata, handles)
% hObject    handle to amplitud2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitud2 as text
%        str2double(get(hObject,'String')) returns contents of amplitud2 as a double


% --- Executes during object creation, after setting all properties.
function amplitud2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitud2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frecuencia1_Callback(hObject, eventdata, handles)
% hObject    handle to frecuencia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuencia1 as text
%        str2double(get(hObject,'String')) returns contents of frecuencia1 as a double


% --- Executes during object creation, after setting all properties.
function frecuencia1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuencia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fase1_Callback(hObject, eventdata, handles)
% hObject    handle to fase1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fase1 as text
%        str2double(get(hObject,'String')) returns contents of fase1 as a double


% --- Executes during object creation, after setting all properties.
function fase1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fase1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amplitud1_Callback(hObject, eventdata, handles)
% hObject    handle to amplitud1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitud1 as text
%        str2double(get(hObject,'String')) returns contents of amplitud1 as a double


% --- Executes during object creation, after setting all properties.
function amplitud1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitud1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in funcion1cos.
function funcion1cos_Callback(hObject, eventdata, handles)
% hObject    handle to funcion1cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of funcion1cos



function resultado_Callback(hObject, eventdata, handles)
% hObject    handle to resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultado as text
%        str2double(get(hObject,'String')) returns contents of resultado as a double


% --- Executes during object creation, after setting all properties.
function resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funcion1 = handles.funcion1;
switch get(eventdata.NewValue, 'tag')
    case 'funcion1cos'
        set(funcion1, 'String', 'coseno');
    case 'funcion1sen'
        set(funcion1, 'String', 'seno');
end
guidata(hObject, handles);


% --- Executes when selected object is changed in uibuttongroup4.
function uibuttongroup4_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup4 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funcion2 = handles.funcion2;
switch get(eventdata.NewValue, 'tag')
    case 'funcion2cos'
        set(funcion2, 'String', 'coseno');
    case 'funcion2sen'
        set(funcion2, 'String', 'seno');
end
guidata(hObject, handles);
