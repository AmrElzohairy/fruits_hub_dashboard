import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failures.dart';

import '../../../features/add_product/domain/entities/add_product_input_entity.dart';

abstract class ProductRepo {
  Future<Either<Failures, String>> addProduct(
      AddProductInputEntity addProductInputEntity);
}
