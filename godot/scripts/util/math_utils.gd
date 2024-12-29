## Original File MIT License Copyright (c) 2024 TinyTakinTeller
class_name MathUtils


## integer power (edge cases in order: 0^x = 0, 1^x = 1, x^0 = 1)
static func pow_int(base: int, exponent: int) -> int:
	if base == 0 or exponent < 0:
		return 0
	if base == 1 or exponent == 0:
		return 1

	var result: int = 1
	for i: int in range(exponent):
		result *= base
	return result


## uses factor_x for both dimensions if factor_y is not provided
static func scale_v2i(vector: Vector2i, factor_x: float, factor_y: float = 0.0) -> Vector2i:
	if is_equal_approx(factor_y, 0.0):
		factor_y = factor_x
	var x: int = int(float(vector.x) * factor_x)
	var y: int = int(float(vector.y) * factor_y)
	return Vector2i(x, y)
