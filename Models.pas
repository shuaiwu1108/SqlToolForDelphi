unit Models;

interface

type
  TStation = class
  public
    code: string;
    name: string;
    vpn: string;
    salePort: Integer;
    syncPort: Integer;
  end;

  TPublicrequest = class
    askorgcode: string;
    askorgname: string;
    targetorgcode: string;

    asktime: string;
    signmsg: string;
  end;

  TPublicresponse = class
    resultcode: string;
    resultmsg: string;

    returntime: TDateTime;

    version: string;
    signmsg: string;
  end;

  TIntegratedQueryrequest = class
    publicrequest: TPublicrequest;
    sql: string;
    dbname: string;
    parameter: string;
  end;

  TIntegratedQueryresponse = class
    publicresponse: TPublicresponse;
    result: TObject;
  end;

implementation

end.
