object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gerenciamento Biblioteca'
  ClientHeight = 614
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 689
    Height = 617
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Listar'
      object Label15: TLabel
        Left = 3
        Top = 3
        Width = 90
        Height = 21
        Caption = 'Listar Alunos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 123
        Width = 681
        Height = 464
        Align = alBottom
        DataSource = DataSource3
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 130
        Top = 93
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Edit4: TEdit
        Left = 3
        Top = 94
        Width = 121
        Height = 23
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
      object Label14: TLabel
        Left = 3
        Top = 3
        Width = 119
        Height = 21
        Caption = 'Cadastrar Alunos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 123
        Width = 681
        Height = 464
        Align = alBottom
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 82
        Width = 681
        Height = 41
        DataSource = DataSource2
        VisibleButtons = [nbInsert, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Editar'
      ImageIndex = 2
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 86
        Height = 21
        Caption = 'Editar dados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 3
        Top = 54
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 144
        Top = 54
        Width = 44
        Height = 15
        Caption = 'Ingresso'
      end
      object Label4: TLabel
        Left = 281
        Top = 54
        Width = 31
        Height = 15
        Caption = 'Curso'
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 139
        Width = 681
        Height = 448
        Align = alBottom
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBNavigator3: TDBNavigator
        Left = 440
        Top = 74
        Width = 178
        Height = 24
        DataSource = DataSource2
        VisibleButtons = [nbPost, nbCancel]
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 3
        Top = 75
        Width = 121
        Height = 23
        TabOrder = 2
        Text = 'Gilvan '
      end
      object Edit2: TEdit
        Left = 144
        Top = 75
        Width = 121
        Height = 23
        TabOrder = 3
        Text = '2017.1'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 281
        Top = 75
        Width = 145
        Height = 23
        DataField = 'NomeCurso'
        DataSource = DataSource2
        TabOrder = 4
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Excluir'
      ImageIndex = 3
      object Label5: TLabel
        Left = 3
        Top = 3
        Width = 93
        Height = 21
        Caption = 'Excluir Dados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 456
        Top = 91
        Width = 35
        Height = 15
        Caption = 'Excluir'
      end
      object Label7: TLabel
        Left = 568
        Top = 91
        Width = 46
        Height = 15
        Caption = 'Atualizar'
      end
      object Label8: TLabel
        Left = 14
        Top = 80
        Width = 36
        Height = 15
        Caption = 'Nome:'
      end
      object Label9: TLabel
        Left = 16
        Top = 109
        Width = 34
        Height = 15
        Caption = 'Curso:'
      end
      object Label10: TLabel
        Left = 16
        Top = 48
        Width = 53
        Height = 15
        Caption = 'Matr'#237'cula:'
      end
      object Label11: TLabel
        Left = 75
        Top = 48
        Width = 12
        Height = 15
        Caption = '15'
      end
      object Label12: TLabel
        Left = 56
        Top = 80
        Width = 36
        Height = 15
        Caption = 'Gilvan '
      end
      object Label13: TLabel
        Left = 56
        Top = 109
        Width = 6
        Height = 15
        Caption = '1'
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 154
        Width = 681
        Height = 433
        Align = alBottom
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBNavigator4: TDBNavigator
        Left = 456
        Top = 112
        Width = 222
        Height = 36
        DataSource = DataSource2
        VisibleButtons = [nbDelete, nbRefresh]
        TabOrder = 1
      end
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\20211148060004\Downloads\libmysql\libmysql.dll'
    Left = 648
    Top = 56
  end
  object DblivrariaConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DbLivraria')
    Connected = True
    LoginPrompt = False
    AfterCommit = Button1Click
    Left = 649
    Top = 103
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = TbalunoTable
    OnStateChange = Button1Click
    OnUpdateData = Button1Click
    Left = 648
    Top = 200
  end
  object TbalunoTable: TFDQuery
    Active = True
    Connection = DblivrariaConnection
    SQL.Strings = (
      'SELECT * from dblivraria.vwalunos ')
    Left = 647
    Top = 151
    object TbalunoTableNuMatricula: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NuMatricula'
      Origin = 'NuMatricula'
    end
    object TbalunoTableNoAluno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NoAluno'
      Origin = 'NoAluno'
      Size = 50
    end
    object TbalunoTableTxIngresso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TxIngresso'
      Origin = 'TxIngresso'
      Size = 6
    end
    object TbalunoTableNoCurso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NoCurso'
      Origin = 'NoCurso'
      Size = 50
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 652
    Top = 5
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NoAluno'
      Control = Edit1
      Track = True
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TxIngresso'
      Control = Edit2
      Track = True
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NuMatricula'
      Component = Label11
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NoAluno'
      Component = Label12
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'IdCurso'
      Component = Label13
      ComponentProperty = 'Caption'
    end
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    Left = 652
    Top = 258
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DblivrariaConnection
    SQL.Strings = (
      'SELECT * FROM dblivraria.tbaluno')
    Left = 648
    Top = 317
    object FDQuery1NuMatricula: TFDAutoIncField
      FieldName = 'NuMatricula'
      Origin = 'NuMatricula'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery1NoAluno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NoAluno'
      Origin = 'NoAluno'
      Size = 50
    end
    object FDQuery1TxIngresso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TxIngresso'
      Origin = 'TxIngresso'
      Size = 6
    end
    object FDQuery1IdCurso: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'IdCurso'
      Origin = 'IdCurso'
    end
    object FDQuery1NomeCurso: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCurso'
      LookupDataSet = FDQuery2
      LookupKeyFields = 'IdCurso'
      LookupResultField = 'NoCurso'
      KeyFields = 'IdCurso'
      Size = 50
      Lookup = True
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 336
    Top = 312
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = TbalunoTable
    ScopeMappings = <>
    Left = 336
    Top = 224
  end
  object SpbuscaalunoProc: TFDStoredProc
    Active = True
    MasterSource = DataSource1
    Connection = DblivrariaConnection
    StoredProcName = 'dblivraria.spBuscaAluno'
    Left = 214
    Top = 35
    ParamData = <
      item
        Position = 1
        Name = 'nome1'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object SpbuscaalunoProcNuMatricula: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NuMatricula'
      Origin = 'NuMatricula'
    end
    object SpbuscaalunoProcNoAluno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NoAluno'
      Origin = 'NoAluno'
      Size = 50
    end
    object SpbuscaalunoProcTxIngresso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TxIngresso'
      Origin = 'TxIngresso'
      Size = 6
    end
    object SpbuscaalunoProcNoCurso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NoCurso'
      Origin = 'NoCurso'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = SpbuscaalunoProc
    Left = 460
    Top = 50
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = DblivrariaConnection
    SQL.Strings = (
      'select * from tbcurso')
    Left = 652
    Top = 378
  end
end
