@AbapCatalog.sqlViewName: 'ZV_DAT_CLI_AZPE'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Datos personales de los clientes'

define view z_b_datos_clientes_azpe
  as select from ztb_cliente_azpe
{
  key id_cliente  as IdCliente,
  key tipo_acceso as TipoAcceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as Url
}
