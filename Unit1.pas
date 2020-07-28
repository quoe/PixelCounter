unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, ColorGrd, JPEG, TeEngine, TeeProcs,
  Chart, Series, TeeFunci, ShellApi;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ListBox1: TListBox;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    TabSheet2: TTabSheet;
    Image1: TImage;
    Button2: TButton;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ColorBox1: TColorBox;
    ProgressBar2: TProgressBar;
    Memo1: TMemo;
    TabSheet4: TTabSheet;
    Chart1: TChart;
    Series1: TPointSeries;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    RadioGroup1: TRadioGroup;
    ColorBox2: TColorBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    TabSheet5: TTabSheet;
    Memo2: TMemo;
    LabeledEdit1: TLabeledEdit;
    Button6: TButton;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var f:tstrings;
    i:integer;
    HOTS_Replays_path: String;
    openDialog1: TOpenDialog;
begin
  openDialog1 := TOpenDialog.Create(self);
  //openDialog1.InitialDir := GetCurrentDir;
  //openDialog1.Options := [ofFileMustExist];
  openDialog1.Options := [ofAllowMultiSelect];
  // Разрешено выбрать только .dpr и .pas файлы
  openDialog1.Filter := 'JPG files|*.jpg|BMP files|*.bmp|';
  if opendialog1.execute then
  begin
    ListBox1.Items := opendialog1.files;
  end;
  openDialog1.Free;

end;

procedure TForm1.Button2Click(Sender: TObject);
var x, y, i, Color, Color2, w, h: integer;
var bmp: TBitmap;
    procent, procent2: double;
    searchCol, searchCol2, addCol: TColor;
    jpg: tjpegimage;
begin
  //jpg:=tjpegimage.Create;
  if ListBox1.Count = 0 then exit;
  if LabeledEdit1.Text = '' then LabeledEdit1.Text := IntToStr(-2)
  else
    addCol := StrToInt(LabeledEdit1.Text);
  Memo2.Clear;
  bmp := TBitmap.Create;
  ProgressBar2.Max := ListBox1.Count - 1;
  Chart1.Series[0].Clear;
  Memo1.Lines.Add('Имя' + #$9 + 'Цвет' + #$9 + 'Всего' + #$9 + 'Доля' + #$9 + 'Процент');
  searchCol := ColorBox1.Selected;
  searchCol2 := ColorBox2.Selected;
  for I := 0 to ListBox1.Count - 1 do
  begin
    ProgressBar2.Position := i;
    try
      Image1.Picture.LoadFromFile(ListBox1.Items[i]);
      //bmp.LoadFromFile(ListBox1.Items[i]);
      //jpg.LoadFromFile(ListBox1.Items[i]);
    finally
      bmp.Assign(Image1.Picture.Graphic);
      //bmp.Assign(jpg);
      w := bmp.Width; //Image1.Picture.Width;
      h := bmp.Height; //Image1.Picture.Height;
      ProgressBar1.Max := w;
      ProgressBar1.Position := 0;
      Color := 0;
      if CheckBox2.Checked then Memo2.Lines.Add('Файл ' + ExtractFileName(ListBox1.Items[i]));
      for x := 0 to w - 1 do
      begin
        for y := 0 to h - 1 do
        begin
          Application.ProcessMessages();
          case RadioGroup1.ItemIndex of
            0:
            begin
              if CheckBox2.Checked then Memo2.Lines.Add('x=' + IntToStr(x) + '; y=' + IntToStr(y) + '; Color=' + IntToStr(bmp.Canvas.Pixels[x,y]) + '=RGB(' + IntToStr(GetRValue(bmp.Canvas.Pixels[x,y])) + ', ' + IntToStr(GetGValue(bmp.Canvas.Pixels[x,y])) + ', ' + IntToStr(GetBValue(bmp.Canvas.Pixels[x,y])) + ')');
              if (bmp.Canvas.Pixels[x,y] = searchCol) or (bmp.Canvas.Pixels[x,y] = addCol) then
              begin
                inc(Color);
                if CheckBox2.Checked then Memo2.Lines.Add('Искомый=' + IntToStr(Color));
              end;
            end;
            1:
            begin
              if bmp.Canvas.Pixels[x,y] = searchCol then inc(Color);
              if bmp.Canvas.Pixels[x,y] = searchCol2 then inc(Color2);
            end;
          end;
        end;
        ProgressBar1.Position := x;
      end;
      case RadioGroup1.ItemIndex of
        0:
        begin
          procent := (100*Color)/(w*h);
          Series1.Add(procent);
          Memo1.Lines.Add(ExtractFileName(ListBox1.Items[i]) + #$9 + IntToStr(Color) + #$9 + IntToStr(w*h) + #$9 + FloatToStr(Color/(w*h)) + #$9 + FloatToStr(procent));
        end;
        1:
        begin
          procent := (100*Color)/(w*h);
          procent2 := (100*Color2)/(w*h);
          Series1.Add(procent);
          Memo1.Lines.Add(ExtractFileName(ListBox1.Items[i]) + #$9 + IntToStr(Color) + #$9 + IntToStr(w*h) + #$9 + FloatToStr(Color/(w*h)) + #$9 + FloatToStr(procent));
          Memo1.Lines.Add(ExtractFileName(ListBox1.Items[i]) + #$9 + IntToStr(Color2) + #$9 + IntToStr(w*h) + #$9 + FloatToStr(Color2/(w*h)) + #$9 + FloatToStr(procent2));
        end;
      end;

    end;
  end;
  bmp.free;
  //jpg.free;
  PageControl1.TabIndex := 2;
  if CheckBox1.Checked then
  begin
    Button3Click(nil);
    Button4Click(nil);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  myDate : TDateTime;
  formattedDateTime : string;
begin
  DateTimeToString(formattedDateTime, 'yymmdd_hh-mm-ss', Now);
  Memo1.Lines.SaveToFile(ExtractFilePath(ParamStr(0)) + formattedDateTime + '.txt');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  myDate : TDateTime;
  formattedDateTime : string;
begin
  DateTimeToString(formattedDateTime, 'yymmdd_hh-mm-ss', Now);
  Chart1.SaveToBitmapFile(ExtractFilePath(ParamStr(0)) + formattedDateTime + '.bmp');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ShellExecute(Form1.Handle, nil, PWideChar(ExtractFilePath(ParamStr(0))), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Memo2.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  Chart1.Series[0].Clear;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //Label1.Caption := IntToStr(Image1.Picture.Bitmap.Width);
  ShowMessage(IntToStr(Image1.Picture.Width));
  ShowMessage(IntToStr(Image1.Picture.Height));
end;

end.
