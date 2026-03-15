@AbapCatalog.sqlViewName: 'ZV_I_LIB_AZPE '
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view z_i_libros_azpe

  as select from ztb_libros_azpe as Libros
  association [1]    to z_b_sales_books_azpe   as _SalesBooks    on Libros.id_libro = _SalesBooks.IdLibro
  association [0..*] to z_i_clientes_por_libro as _ClientesLibro on Libros.id_libro = _ClientesLibro.IdLibro
  association [0..*] to z_b_acc_cat_azpe       as _Categorias    on Libros.bi_categ = _Categorias.BiCateg
{
  key id_libro  as IdLibro,
  key bi_categ  as BiCateg,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url,
      case
      when _SalesBooks.TotalVendidos > 2 then 3
      else _SalesBooks.TotalVendidos
      end       as criticidad,
      ''        as EstatusVenta,
      _ClientesLibro,
      _Categorias
}
