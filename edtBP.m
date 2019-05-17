function varargout = edtBP(varargin)
%EDTBP MATLAB code file for edtBP.fig
%      EDTBP, by itself, creates a new EDTBP or raises the existing
%      singleton*.
%
%      H = EDTBP returns the handle to a new EDTBP or the handle to
%      the existing singleton*.
%
%      EDTBP('Property','Value',...) creates a new EDTBP using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to edtBP_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      EDTBP('CALLBACK') and EDTBP('CALLBACK',hObject,...) call the
%      local function named CALLBACK in EDTBP.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help edtBP

% Last Modified by GUIDE v2.5 17-May-2019 11:31:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @edtBP_OpeningFcn, ...
                   'gui_OutputFcn',  @edtBP_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before edtBP is made visible.
function edtBP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for edtBP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes edtBP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = edtBP_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(edtBP);
InterfazGrafica;



function modulo_Callback(hObject, eventdata, handles)
% hObject    handle to modulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of modulo as text
%        str2double(get(hObject,'String')) returns contents of modulo as a double


% --- Executes during object creation, after setting all properties.
function modulo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to modulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resultBinom_Callback(hObject, eventdata, handles)
% hObject    handle to resultBinom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultBinom as text
%        str2double(get(hObject,'String')) returns contents of resultBinom as a double


% --- Executes during object creation, after setting all properties.
function resultBinom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultBinom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function argumento_Callback(hObject, eventdata, handles)
% hObject    handle to argumento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of argumento as text
%        str2double(get(hObject,'String')) returns contents of argumento as a double


% --- Executes during object creation, after setting all properties.
function argumento_CreateFcn(hObject, eventdata, handles)
% hObject    handle to argumento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(hObject, handles);
modString = handles.modulo.String;
argString = handles.argumento.String;
modulo = str2double(modString);
argumento = str2double(argString);
numeroPolar = createPolar(modulo, argumento);
numeroBin = aBinomica(numeroPolar);
if esBinomico(numeroBin)
    set(handles.resultBinom, 'String', binomicoAString(numeroBin));
end
guidata(hObject, handles);



function parteReal_Callback(hObject, eventdata, handles)
% hObject    handle to parteReal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of parteReal as text
%        str2double(get(hObject,'String')) returns contents of parteReal as a double


% --- Executes during object creation, after setting all properties.
function parteReal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parteReal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resultPolar_Callback(hObject, eventdata, handles)
% hObject    handle to resultPolar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultPolar as text
%        str2double(get(hObject,'String')) returns contents of resultPolar as a double


% --- Executes during object creation, after setting all properties.
function resultPolar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultPolar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function parteImag_Callback(hObject, eventdata, handles)
% hObject    handle to parteImag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of parteImag as text
%        str2double(get(hObject,'String')) returns contents of parteImag as a double


% --- Executes during object creation, after setting all properties.
function parteImag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parteImag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(hObject, handles);
realString = handles.parteReal.String;
imagString = handles.parteImag.String;
real = str2double(realString);
imag = str2double(imagString);
numeroBin = real + 1i*imag;
numeroPolar = aPolar(numeroBin);
if esPolar(numeroPolar)
    set(handles.resultPolar, 'String', polarAString(numeroPolar));
end
guidata(hObject, handles);
