import 'package:fleet_pay/models/contractor.dart';
import 'package:fleet_pay/models/contractor_array_response.dart';
import 'package:fleet_pay/models/contractor_dashboard_summary.dart';
import 'package:fleet_pay/providers/auth_provider.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/contractor_dashboard_summary_response.dart';

class ContractorProvider extends ChangeNotifier {
  BuildContext context;
  late BackendService backendService;
  late AuthProvider authProvider;
  Contractor? contractor;
  ContractorDashboardSummary? summary;

  ContractorProvider(this.context) {
    backendService = Provider.of<BackendService>(context, listen: false);
    authProvider = Provider.of<AuthProvider>(context, listen: false);
  }

  Future<Contractor> getContractor() async {
    ContractorArrayResponse arrayResponse =
        await backendService.getContractors();

    return contractor = arrayResponse.result!.first;
  }

  Future<ContractorDashboardSummary> getDashboard(String contractorId) async {
    ContractorDashboardSummaryResponse summaryResponse =
        await backendService.getContractorDashboard(contractorId: contractorId);
    return summary = summaryResponse.result!;
  }
}
