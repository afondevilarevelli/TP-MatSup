function varargout = operacionesAvanzadas(varargin)
addpath('../src');
% OPERACIONESAVANZADAS MATLAB code for operacionesAvanzadas.fig
%      OPERACIONESAVANZADAS, by itself, creates a new OPERACIONESAVANZADAS or raises the existing
%      singleton*.
%
%      H = OPERACIONESAVANZADAS returns the handle to a new OPERACIONESAVANZADAS or the handle to
%      the existing singleton*.
%
%      OPERACIONESAVANZADAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERACIONESAVANZADAS.M with the given input arguments.
%
%      OPERACIONESAVANZADAS('Property','Value',...) creates a new OPERACIONESAVANZADAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before operacionesAvanzadas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to operacionesAvanzadas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help operacionesAvanzadas

% Last Modified by GUIDE v2.5 06-Jun-2019 00:15:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @operacionesAvanzadas_OpeningFcn, ...
                   'gui_OutputFcn',  @operacionesAvanzadas_OutputFcn, ...
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


% --- Executes just before operacionesAvanzadas is made visible.
function operacionesAvanzadas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to operacionesAvanzadas (see VARARGIN)

% Choose default command line output for operacionesAvanzadas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes operacionesAvanzadas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = operacionesAvanzadas_OutputFcn(hObject, eventdata, handles) 
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
close(operacionesAvanzadas);
InterfazGrafica;



function numRaiz_Callback(hObject, eventdata, handles)
% hObject    handle to numRaiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numRaiz as text
%        str2double(get(hObject,'String')) returns contents of numRaiz as a double


% --- Executes during object creation, after setting all properties.
function numRaiz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numRaiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function indice_Callback(hObject, eventdata, handles)
% hObject    handle to indice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of indice as text
%        str2double(get(hObject,'String')) returns contents of indice as a double


% --- Executes during object creation, after setting all properties.
function indice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to indice (see GCBO)
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
numeroRaizString = handles.numRaiz.String;
indiceString = handles.indice.String;
numeroRaiz = obtenerComplejoFromString(numeroRaizString);
indice = str2num(indiceString);
if isnumeric(indice) && (esPolar(numeroRaiz) || esBinomico(numeroRaiz))
    if esPolar(numeroRaiz)
       numeroRaiz = aBinomica(numeroRaiz); 
    end
    [raices, prim] = raiz(numeroRaiz, indice);
    cant = length(raices);
    resultadoString = string([]);
    
    for i=1:cant
        resultadoString(i) = strcat('W',num2str(i-1),' =',' ', polarAString(aPolar(raices(i))));
        if size(prim) > 0
            esPrimitiva = ismember(i, prim);
            if esPrimitiva > 0 %Es primitiva
                resultadoString(i) = strcat(resultadoString(i),' - Es primitiva');
            end
        end
    end
    set(handles.resultadoRaiz, 'Value', cant);
    set(handles.resultadoRaiz, 'String', resultadoString);
end
guidata(hObject, handles);


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in resultadoRaiz.
function resultadoRaiz_Callback(hObject, eventdata, handles)
% hObject    handle to resultadoRaiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns resultadoRaiz contents as cell array
%        contents{get(hObject,'Value')} returns selected item from resultadoRaiz


% --- Executes during object creation, after setting all properties.
function resultadoRaiz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultadoRaiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
