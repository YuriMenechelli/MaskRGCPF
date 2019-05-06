unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    gbTeste: TGroupBox;
    ComboBox1: TComboBox;
    edtGeral: TEdit;
    lblGeral: TLabel;
    procedure edtGeralChange(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
   {Criado por Yuri Menechelli}
{$R *.dfm}

procedure TfrmPrincipal.ComboBox1Select(Sender: TObject);
begin
 case ComboBox1.ItemIndex of
  0 : begin
  lblGeral.Caption := 'CPF';
  edtGeral.Clear;
  end;

  1: begin
  lblGeral.Caption := 'RG';
  edtGeral.Clear;
  end;

  2: begin
  lblGeral.Caption := 'CNPJ';
  edtGeral.Clear;
  end;

  3: begin
  lblGeral.Caption := 'Telefone Residencial';
  edtGeral.Clear;
  end;

  4: begin
  lblGeral.Caption := 'Telefone Celular';
  edtGeral.Clear;
  end;
 end;
end;

procedure TfrmPrincipal.edtGeralChange(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 1 then
    edtGeral.CharCase := ecUpperCase
  else
    edtGeral.CharCase := ecNormal;
 case ComboBox1.ItemIndex of
  0 : begin                   //CPF
  edtGeral.MaxLength := 14;
  if Length(edtGeral.Text) = 3 then
   begin
   edtGeral.Text := edtGeral.text + '.';
   edtGeral.SelStart := Length(edtGeral.text);
   end;
  if Length(edtGeral.Text) = 7 then
   begin
   edtGeral.Text := edtGeral.text+'.';
   edtGeral.SelStart := Length(edtGeral.text);
   end;
  if Length(edtGeral.Text) = 11 then
   begin
   edtGeral.text := edtGeral.text+'-';
   edtGeral.SelStart := Length(edtGeral.Text);
   end;
  end;

  1: begin                    //RG
  edtGeral.MaxLength := 12;
  if Length(edtGeral.Text) = 2 then
   begin
    edtGeral.Text := edtGeral.text + '.' ;
    edtGeral.SelStart := Length(edtGeral.text);
   end;
  if Length(edtGeral.Text) = 6 then
   begin
    edtGeral.Text := edtGeral.text+'.';
    edtGeral.SelStart := Length(edtGeral.text);
   end;
  if Length(edtGeral.Text) = 10 then
   begin
    edtGeral.text := edtGeral.text+'-';
    edtGeral.SelStart := Length(edtGeral.Text);
   end;
  end;

  2: begin                        //CNPJ
  edtGeral.MaxLength := 18;
  if Length(edtGeral.Text) = 2 then
   begin
    edtGeral.Text := edtGeral.text+'.';
    edtGeral.SelStart := Length(edtGeral.text);
   end;
  if Length(edtGeral.Text) = 6 then
   begin
   edtGeral.text := edtGeral.text+'.';
   edtGeral.SelStart := Length(edtGeral.Text);
   end;
  if Length(edtGeral.Text) = 10 then
   begin
   edtGeral.text := edtGeral.text+'/';
   edtGeral.SelStart := Length(edtGeral.Text);
   end;
  if Length(edtGeral.Text) = 15 then
   begin
   edtGeral.text := edtGeral.text+'-';
   edtGeral.SelStart := Length(edtGeral.Text);
   end;
  end;

  3: begin                            //Telefone
  edtGeral.MaxLength := 14;
  if Length(edtGeral.Text) = 1 then
   begin
   if edtGeral.Text[1] = '(' then
       edtGeral.Text := ''
   else
    begin
     edtGeral.Text := '(' +edtGeral.text;
     edtGeral.SelStart := Length(edtGeral.text);
    end;
   end;
  if Length(edtGeral.Text) = 3 then
   begin
   edtGeral.Text := edtGeral.text+') ';
   edtGeral.SelStart := Length(edtGeral.text);
   end;
  if Length(edtGeral.Text) = 9 then
   begin
   edtGeral.text := edtGeral.text+'-';
   edtGeral.SelStart := Length(edtGeral.Text);
   end;
  end;

  4: begin                              //Celular
  edtGeral.MaxLength := 15;
  if Length(edtGeral.Text) = 1 then
   begin
   if edtGeral.Text[1] = '(' then
    edtGeral.Text := ''
   else
    begin
     edtGeral.Text := '(' +edtGeral.text;
     edtGeral.SelStart := Length(edtGeral.text);
    end;
   end;
  if Length(edtGeral.Text) = 3 then
   begin
   edtGeral.Text := edtGeral.text+') ';
   edtGeral.SelStart := Length(edtGeral.text);
   end;
  if Length(edtGeral.Text) = 10 then
   begin
   edtGeral.text := edtGeral.text+'-';
   edtGeral.SelStart := Length(edtGeral.Text);
   end;
  end;
 end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  lblGeral.Caption := 'CPF';
end;

end.
