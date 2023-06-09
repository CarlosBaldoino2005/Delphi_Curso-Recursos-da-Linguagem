unit View.Loading;

interface

uses
  System.SysUtils;

type
  TLoadingProgress = procedure ( aValue : Integer ) of Object;

  TLoading = class
    private
    FOnLoadingProgress: TLoadingProgress;
    procedure SetOnLoadingProgress(const Value: TLoadingProgress);
    public
      procedure Preencher;
      procedure FazIsso ( aValue : TProc<Integer>);
      property OnLoadingProgress : TLoadingProgress read FOnLoadingProgress write SetOnLoadingProgress;
  end;

implementation

{ TLoading }

procedure TLoading.FazIsso( aValue : TProc<Integer>);
begin
  aValue(10);
end;

procedure TLoading.Preencher;
var
  I: Integer;
begin
  for I := 1 to 100 do
  begin
    Sleep(10);
    if Assigned(FOnLoadingProgress) then
      FOnLoadingProgress(I);
  end;
end;

procedure TLoading.SetOnLoadingProgress(const Value: TLoadingProgress);
begin
  FOnLoadingProgress := Value;
end;

end.
