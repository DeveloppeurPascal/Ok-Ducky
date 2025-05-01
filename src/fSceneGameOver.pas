/// <summary>
/// ***************************************************************************
///
/// Ok Ducky!
///
/// Copyright 2021-2025 Patrick PREMARTIN under AGPL 3.0 license.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
/// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
/// DEALINGS IN THE SOFTWARE.
///
/// ***************************************************************************
///
/// Author(s) :
/// Patrick PREMARTIN
///
/// Site :
/// https://okducky.gamolf.fr
///
/// Project site :
/// https://github.com/DeveloppeurPascal/Ok-Ducky
///
/// ***************************************************************************
/// File last update : 2025-05-01T18:06:02.000+02:00
/// Signature : aee0797235805de2b7c059cda46a44a0380fea98
/// ***************************************************************************
/// </summary>

unit fSceneGameOver;

interface

{$MESSAGE WARN 'modifier affichage du score final et du titre "game over"'}

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  _ScenesAncestor;

type
  TGameOverScene = class(T__SceneAncestor)
  private
  public
    procedure ShowScene; override;
  end;

implementation

{$R *.fmx}

uses
  System.Messaging,
  uScene,
  uconsts,
  uOkDuckyGameData;

{ TGameOverScene }

procedure TGameOverScene.ShowScene;
begin
  inherited;
  ShowMessage('GAME OVER' + slinebreak + slinebreak + 'Your final score is ' +
    TOkDuckyGameData.Current.Score.ToString);
  TScene.Current := TSceneType.Home;
end;

initialization

TMessageManager.DefaultManager.SubscribeToMessage(TSceneFactory,
  procedure(const Sender: TObject; const Msg: TMessage)
  var
    NewScene: TGameOverScene;
  begin
    if (Msg is TSceneFactory) and
      ((Msg as TSceneFactory).SceneType = TSceneType.GameOver) then
    begin
      NewScene := TGameOverScene.Create(application.mainform);
      NewScene.Parent := application.mainform;
      TScene.RegisterScene(TSceneType.GameOver, NewScene);
    end;
  end);

end.
