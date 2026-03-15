@AbapCatalog.sqlViewName: 'Z_I_CLI_LIB_AZPE'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Relacion de ventas de cleintes por libro'
@Metadata.allowExtensions: true
define view z_i_clientes_por_libro
  as select from ztb_cln_lib_azpe as LibrosVendidos
  association [1] to z_b_datos_clientes_azpe as _Clientes on LibrosVendidos.id_cliente = _Clientes.IdCliente
{
  key id_cliente           as IdCliente,
  key id_libro             as IdLibro,
      _Clientes.Nombre     as Nombre,
      _Clientes.Apellidos  as Apellidos,
      _Clientes.Email      as Email,
      _Clientes.TipoAcceso as TipoAcceso,
      _Clientes.Url        as UrlCli

}
