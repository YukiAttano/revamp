import "package:flutter/material.dart";
import "../layout/gap.dart";
import "../text_field/city_field.dart";
import "../text_field/country_field.dart";
import "../text_field/state_field.dart";
import "../text_field/street_field.dart";
import "../text_field/zip_field.dart";

class AddressInputView extends StatelessWidget {

  final bool? enabled;
  final TextEditingController? streetController;
  final TextEditingController? cityController;
  final TextEditingController? zipController;
  final TextEditingController? stateController;
  final TextEditingController? countryController;

  const AddressInputView({
    super.key,
    this.enabled,
    this.streetController,
    this.cityController,
    this.zipController,
    this.stateController,
    this.countryController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreetField(
          controller: streetController,
          enabled: enabled,
        ),
        const Gap.big(),
        Row(
          children: [
            Flexible(
              child: CityField(
                controller: cityController,
                enabled: enabled,
              ),
            ),
            const Gap.small(),
            Flexible(
              child: ZipField(
                controller: zipController,
                enabled: enabled,
              ),
            ),
          ],
        ),
        const Gap.big(),
        StateField(
          controller: stateController,
          enabled: enabled,
        ),
        const Gap(),
        CountryField(
          controller: countryController,
          enabled: enabled,
        ),
      ],
    );
  }
}
