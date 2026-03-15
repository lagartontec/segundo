@AbapCatalog.sqlViewName: 'ZV_ACC_CAT_AZPE'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Acceso Categoria Clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_acc_cat_azpe
  as select from ztb_acc_cat_azpe
{
  key bi_categ    as BiCateg,
  key tipo_acceso as TipoAcceso
}
