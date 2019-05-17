function varargout = operacionesBasicas(varargin)
% OPERACIONESBASICAS MATLAB code for operacionesBasicas.fig
%      OPERACIONESBASICAS, by itself, creates a new OPERACIONESBASICAS or raises the existing
%      singleton*.
%
%      H = OPERACIONESBASICAS returns the handle to a new OPERACIONESBASICAS or the handle to
%      the existing singleton*.
%
%      OPERACIONESBASICAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERACIONESBASICAS.M with the given input arguments.
%
%      OPERACIONESBASICAS('Property','Value',...) creates a new OPERACIONESBASICAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before operacionesBasicas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to operacionesBasicas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help operacionesBasicas

% Last Modified by GUIDE v2.5 17-May-2019 11:21:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @operacionesBasicas_OpeningFcn, ...
                   'gui_OutputFcn',  @operacionesBasicas_OutputFcn, ...
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


% --- Executes just before operacionesBasicas is made visible.
function operacionesBasicas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to operacionesBasicas (see VARARGIN)

% Choose default command line output for operacionesBasicas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes operacionesBasicas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = operacionesBasicas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in selector.
function selector_Callback(hObject, eventdata, handles)
% hObject    handle to selector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%guidata(hObject, handles);
simbolo = handles.simboloOp;
posOperacion = get(handles.selector, 'Value');
switch posOperacion
    case 2 %Suma
        set(simbolo, 'String', '+');
    case 3 %Resta
        set(simbolo, 'String', '-');
    case 4 %Multiplicacion
        set(simbolo, 'String', '*');
    case 5 %Division
        set(simbolo, 'String', '/');
end
guidata(hObject, handles);
% Hints: contents = cellstr(get(hObject,'String')) returns selector contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selector


% --- Executes during object creation, after setting all properties.
function selector_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selector (see GCBO)
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
%handles.output = hObject;
guidata(hObject, handles);
posOperacion = get(handles.selector, 'Value');
num1String = handles.num1.String;
num2String = handles.num2.String;
num1 = obtenerComplejoFromString(num1String);
num2 = obtenerComplejoFromString(num2String);
if(esPolar(num1))
    num1 = aBinomica(num1);
end
if(esPolar(num2))
	num2 = aBinomica(num2);
end
if ~isnan(num1) && ~isnan(num2) 
    switch posOperacion
        case 2 %Suma
            resultado = num1 + num2;
        case 3 %Resta
            resultado = num1 - num2;
        case 4 %Multiplicacion
            resultado = num1 * num2;
        case 5 %Division
            resultado = num1 / num2;
        otherwise
            resultado = 0;
    end
    set(handles.resultado, 'String', binomicoAString(resultado));
    guidata(hObject, handles);
end



function num1_Callback(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num1 as text
%        str2double(get(hObject,'String')) returns contents of num1 as a double


% --- Executes during object creation, after setting all properties.
function num1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num2_Callback(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num2 as text
%        str2double(get(hObject,'String')) returns contents of num2 as a double


% --- Executes during object creation, after setting all properties.
function num2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(operacionesBasicas);
InterfazGrafica;
