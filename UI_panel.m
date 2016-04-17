function varargout = UI_panel(varargin)
% CALCULATOR_GUI MATLAB code for calculator_GUI.fig
%      CALCULATOR_GUI, by itself, creates a new CALCULATOR_GUI or raises the existing
%      singleton*.
%
%      H = CALCULATOR_GUI returns the handle to a new CALCULATOR_GUI or the handle to
%      the existing singleton*.
%
%      CALCULATOR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR_GUI.M with the given input arguments.
%
%      CALCULATOR_GUI('Property','Value',...) creates a new CALCULATOR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator_GUI

% Last Modified by GUIDE v2.5 17-Apr-2016 18:01:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UI_panel_OpeningFcn, ...
                   'gui_OutputFcn',  @UI_panel_OutputFcn, ...
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


% --- Executes just before calculator_GUI is made visible.
function UI_panel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator_GUI (see VARARGIN)

% Choose default command line output for calculator_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.slider_Z,'Value',50);
set(handles.slider_e,'Value',9.9);
set(handles.slider_W,'Value',0.05);
set(handles.slider_d,'Value',0.5);

set(handles.edit_Z, 'String', 50);
set(handles.edit_e, 'String', 9.9);
set(handles.edit_W, 'String', 0.05);
set(handles.edit_d, 'String', 0.5);

% --- Outputs from this function are returned to the command line.
function varargout = UI_panel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_Z_Callback(hObject, eventdata, handles)
% hObject    handle to slider_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Z0 = get(handles.slider_Z,'value');
set(handles.edit_Z, 'String', num2str(Z0));

% --- Executes during object creation, after setting all properties.
function slider_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_Z_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Z as text
%        str2double(get(hObject,'String')) returns contents of edit_Z as a double
Z0 = str2num(get(handles.edit_Z,'String'));
set(handles.slider_Z,'Value', Z0);

% --- Executes during object creation, after setting all properties.
function edit_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_e_Callback(hObject, eventdata, handles)
% hObject    handle to slider_e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
e_r = get(handles.slider_e,'value');
set(handles.edit_e, 'String', num2str(e_r));

% --- Executes during object creation, after setting all properties.
function slider_e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function edit_e_Callback(hObject, eventdata, handles)
% hObject    handle to edit_e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_e as text
%        str2double(get(hObject,'String')) returns contents of edit_e as a double
e_r = str2num(get(handles.edit_e,'String'));
set(handles.slider_e,'Value', e_r);

% --- Executes during object creation, after setting all properties.
function edit_e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_W_Callback(hObject, eventdata, handles)
% hObject    handle to slider_W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
W = get(handles.slider_W,'value');
set(handles.edit_W, 'String', num2str(W));

% --- Executes during object creation, after setting all properties.
function slider_W_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_W_Callback(hObject, eventdata, handles)
% hObject    handle to edit_W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_W as text
%        str2double(get(hObject,'String')) returns contents of edit_W as a double
W = str2num(get(handles.edit_W,'String'));
set(handles.slider_W,'Value', W);

% --- Executes during object creation, after setting all properties.
function edit_W_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_d_Callback(hObject, eventdata, handles)
% hObject    handle to slider_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
d = get(handles.slider_d,'value');
set(handles.edit_d, 'String', num2str(d));

% --- Executes during object creation, after setting all properties.
function slider_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_d_Callback(hObject, eventdata, handles)
% hObject    handle to edit_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_d as text
%        str2double(get(hObject,'String')) returns contents of edit_d as a double
d = str2num(get(handles.edit_d,'String'));
set(handles.slider_d,'Value', d);

% --- Executes during object creation, after setting all properties.
function edit_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_freq_Callback(hObject, eventdata, handles)
% hObject    handle to edit_freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_freq as text
%        str2double(get(hObject,'String')) returns contents of edit_freq as a double


% --- Executes during object creation, after setting all properties.
function edit_freq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_phase_Callback(hObject, eventdata, handles)
% hObject    handle to edit_phase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_phase as text
%        str2double(get(hObject,'String')) returns contents of edit_phase as a double


% --- Executes during object creation, after setting all properties.
function edit_phase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_phase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_len_Callback(hObject, eventdata, handles)
% hObject    handle to edit_len (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_len as text
%        str2double(get(hObject,'String')) returns contents of edit_len as a double


% --- Executes during object creation, after setting all properties.
function edit_len_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_len (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton_Z.
function pushbutton_Z_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
W = get(handles.slider_W,'value');
d = get(handles.slider_d,'value');
e_r = get(handles.slider_e,'value');

Z0 = microstrip_Z0(W,d,e_r);
set(handles.edit_Z, 'String', Z0);
set(handles.slider_Z,'Value', Z0);


% --- Executes on button press in pushbutton_W.
function pushbutton_W_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Z0 = get(handles.slider_Z,'value');
d = get(handles.slider_d,'value');
e_r = get(handles.slider_e,'value');

W_d = microstrip_ratio(Z0, e_r);
W = W_d*d;

set(handles.edit_W, 'String', W);
set(handles.slider_W,'Value', W);

% --- Executes on button press in pushbutton_len.
function pushbutton_len_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_len (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f = str2num(get(handles.edit_freq,'String'));
f = f*10^6;
phi = str2num(get(handles.edit_phase,'String'));
W = get(handles.slider_W,'value');
d = get(handles.slider_d,'value');
e_r = get(handles.slider_e,'value');

len = microstrip_length(f, phi, W, d, e_r);

set(handles.edit_len, 'String', len);


% --- Executes on button press in pushbutton_update.
function pushbutton_update_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f = str2num(get(handles.edit_freq,'String'));
f = f*10^6;
W = get(handles.slider_W,'value');
d = get(handles.slider_d,'value');
Z0 = get(handles.slider_Z,'value');
l = str2num(get(handles.edit_len,'String'));
e_r = get(handles.slider_e,'value');
tan_d = str2num(get(handles.edit_tand,'String'));
if (get(handles.radiobutton_cu, 'Value') == 1)
    sig = 5.8E7;
else
    sig = str2num(get(handles.edit_cond,'String')); 
end

[a_c, a_d, a_t] = microstrip_attenuation(f, W, d, Z0, l, tan_d, e_r, sig);

set(handles.text_cond_out, 'String', num2str(a_c*8.686, 3));
set(handles.text_diel_out, 'String', num2str(a_d*8.686, 3));
set(handles.text_total_out, 'String', num2str(a_t*8.686, 3));

function edit_cond_Callback(hObject, eventdata, handles)
% hObject    handle to edit_cond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_cond as text
%        str2double(get(hObject,'String')) returns contents of edit_cond as a double


% --- Executes during object creation, after setting all properties.
function edit_cond_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_cond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_tand_Callback(hObject, eventdata, handles)
% hObject    handle to edit_tand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_tand as text
%        str2double(get(hObject,'String')) returns contents of edit_tand as a double


% --- Executes during object creation, after setting all properties.
function edit_tand_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_tand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
