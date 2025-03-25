import 'package:fleet_pay/models/fund_request_preview.dart';
import 'package:fleet_pay/models/fund_request_preview_response.dart';
import 'package:fleet_pay/models/new_fund_request.dart';
import 'package:fleet_pay/models/transaction.dart';
import 'package:fleet_pay/models/transaction_array_response.dart';
import 'package:fleet_pay/models/transaction_response.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransactionProvider extends ChangeNotifier {
  NewFundRequest? fundRequest;
  BuildContext context;
  late BackendService backendService;
  FundRequestPreview? fundRequestPreview;

  TransactionProvider(this.context) {
    backendService = Provider.of<BackendService>(context, listen: false);
  }

  Future<FundRequestPreview> getFundPreview(NewFundRequest request) async {
    FundRequestPreviewResponse fundRequestPreviewResponse =
        await backendService.previewFundRequest(request: request);
    return fundRequestPreview = fundRequestPreviewResponse.result!;
  }

  setFundRequest(NewFundRequest request) {
    fundRequest = request;
  }

  Future<List<Transaction>?> getContractorTransactions(
      String contractorId) async {
    TransactionArrayResponse transactionArrayResponse = await backendService
        .getContractorTransactions(contractorId: contractorId);

    return transactionArrayResponse.result;
  }

  Future<Transaction> requestFund(NewFundRequest request) async {
    TransactionResponse transactionResponse =
        await backendService.requestFund(request: request);

    return transactionResponse.result!;
  }
}
