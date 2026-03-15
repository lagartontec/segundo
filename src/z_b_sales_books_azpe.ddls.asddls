@AbapCatalog.sqlViewName: 'ZV_SALES_B_AZPE'
@AbapCatalog.compiler.compareFilter: true

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Estatus de ventas de libros'
@Metadata.ignorePropagatedAnnotations: true
define view z_b_sales_books_azpe
  as select from ztb_cln_lib_azpe
{

  key id_libro as IdLibro,
      count(*) as TotalVendidos
}
group by
  id_libro
