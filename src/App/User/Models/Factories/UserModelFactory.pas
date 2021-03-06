(*!------------------------------------------------------------
 * Fano MVC Sample Application (https://fanoframework.github.io)
 *
 * @link      https://github.com/fanoframework/fano-app-db.git
 * @copyright Copyright (c) 2018 Zamrony P. Juhara
 * @license   https://github.com/fanoframework/fano-app-db/blob/master/LICENSE (GPL 3.0)
 *------------------------------------------------------------- *)
unit UserModelFactory;

interface

uses
    fano;

type

    (*!-----------------------------------------------
     * Factory for model TUserModel
     *
     * @author Zamrony P. Juhara <zamronypj@yahoo.com>
     *------------------------------------------------*)
    TUserModelFactory = class(TFactory)
    public
        function build(const container : IDependencyContainer) : IDependency; override;
    end;

implementation

uses

    SysUtils,

    {*! -------------------------------
        unit interfaces
    ----------------------------------- *}
    UserModel;

    function TUserModelFactory.build(const container : IDependencyContainer) : IDependency;
    begin
        result := TUserModel.create(container.get('db') as IRdbms);
    end;
end.
