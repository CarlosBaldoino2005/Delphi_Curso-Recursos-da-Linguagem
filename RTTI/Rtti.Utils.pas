unit Rtti.Utils;

interface

uses
  Vcl.Forms,
  System.JSON;

type

  TJsonField = class(TCustomAttribute)
    private
    FJsonField: String;
    FPosition: Integer;
    procedure SetJsonField(const Value: String);
    procedure SetPosition(const Value: Integer);
    public
      constructor Create( aJsonField : String; aPosition : Integer );
      property JsonField : String read FJsonField write SetJsonField;
      property Position : Integer read FPosition write SetPosition;
  end;

  TRttiUtils = class
    private
    public
      class procedure FormToJson ( aForm : TForm; var aResult : TJsonObject );
  end;

implementation

uses
  System.Rtti, Vcl.StdCtrls;

{ TRttiUtils }

class procedure TRttiUtils.FormToJson(aForm: TForm; var aResult: TJsonObject);
var
  vRttiContext : TRttiContext;
  vRttiType : TRttiType;
  vRttiField : TRttiField;
  vCustomAttribute : TCustomAttribute;
begin
  vRttiContext := TRttiContext.Create;
  try
    vRttiType := vRttiContext.GetType(aForm.ClassType);
    for vRttiField in vRttiType.GetFields do
    begin
      for vCustomAttribute in vRttiField.GetAttributes do
      begin
        if vCustomAttribute is TJsonField then
        begin
          aResult.AddPair(
            TJsonField(vCustomAttribute).JsonField,
            (aForm.FindComponent(vRttiField.Name) as TEdit).Text
          )
        end;
      end;
    end;
  finally
    vRttiContext.Free;
  end;

end;

{ TJsonField }

constructor TJsonField.Create( aJsonField : String; aPosition : Integer );
begin
  FJsonField := aJsonField;
  FPosition := aPosition;
end;

procedure TJsonField.SetJsonField(const Value: String);
begin
  FJsonField := Value;
end;

procedure TJsonField.SetPosition(const Value: Integer);
begin
  FPosition := Value;
end;

end.
