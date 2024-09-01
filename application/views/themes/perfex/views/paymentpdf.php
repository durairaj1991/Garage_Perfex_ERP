<?php

defined('BASEPATH') or exit('No direct script access allowed');
$dimensions = $pdf->getPageDimensions();

// Get Y position for the separation
$y = $pdf->getY();

$info_right_column = '';
$info_left_column  = '';

$company_info = '<div style="color:#424242;">';
$company_info .= format_organization_info();
$company_info .= '</div>';

// Add logo
$info_left_column .= pdf_logo_url();
pdf_multi_row($info_left_column, $info_right_column, $pdf, ($dimensions['wk'] / 2) - $dimensions['lm']);
// Write top left logo and right column info/text

// Bill to
$client_details = format_customer_info($payment->invoice_data, 'payment', 'billing');

$left_info  = $swap == '1' ? $client_details : $company_info;
$right_info = $swap == '1' ? $company_info : $client_details;

pdf_multi_row($left_info, $right_info, $pdf, ($dimensions['wk'] / 2) - $dimensions['lm']);

$pdf->SetFontSize(15);

$receit_heading = '<div style="text-align:center">' . mb_strtoupper(_l('payment_receipt'), 'UTF-8') . '</div>';
$pdf->Ln(20);
$pdf->writeHTMLCell(0, '', '', '', $receit_heading, 0, 1, false, true, 'L', true);
$pdf->SetFontSize($font_size);
$pdf->Ln(20);
$pdf->Cell(0, 0, _l('payment_date') . ' ' . _d($payment->date), 0, 1, 'L', 0, '', 0);
$pdf->Ln(3);
$pdf->Line($pdf->getX(), $pdf->getY(), 90, $pdf->getY());
$pdf->Ln(3);
$payment_name = $payment->name;

if (!empty($payment->paymentmethod)) {
    $payment_name .= ' - ' . $payment->paymentmethod;
}

$pdf->Cell(0, 0, _l('payment_view_mode') . ' ' . $payment_name, 0, 1, 'L', 0, '', 0);

if (!empty($payment->transactionid)) {
    $pdf->Ln(3);
    $pdf->Line($pdf->getX(), $pdf->getY(), 90, $pdf->getY());
    $pdf->Ln(3);
    $pdf->Cell(0, 0, _l('payment_transaction_id') . ': ' . $payment->transactionid, 0, 1, 'L', 0, '', 0);
}

$pdf->Ln(3);
$pdf->Line($pdf->getX(), $pdf->getY(), 90, $pdf->getY());
$pdf->Ln(3);
$pdf->SetFillColor(132, 197, 41);
$pdf->SetTextColor(255);
$pdf->SetFontSize(12);
$pdf->Ln(3);
$pdf->Cell(80, 10, _l('payment_total_amount'), 0, 1, 'C', '1');
$pdf->SetFontSize(11);
$pdf->Cell(80, 10, app_format_money($payment->amount, $payment->invoice_data->currency_name), 0, 1, 'C', '1');

$pdf->Ln(10);
$pdf->SetTextColor(0);
$pdf->SetFont($font_name, 'B', 14);
$pdf->Cell(0, 0, _l('payment_for_string'), 0, 1, 'L', 0, '', 0);
$pdf->SetFont($font_name, '', $font_size);
$pdf->Ln(5);

// Header
$tblhtml = '<table width="100%" bgcolor="#fff" cellspacing="0" cellpadding="5" border="0">
<tr height="30" style="color:#fff;" bgcolor="#3A4656">
    <th width="' . ($amountDue ? 20 : 25) . '%;">' . _l('payment_table_invoice_number') . '</th>
    <th width="' . ($amountDue ? 20 : 25) . '%;">' . _l('') . '</th>
    <th width="' . ($amountDue ? 20 : 25) . '%;">' . _l('payment_table_invoice_date') . '</th>
    <th width="' . ($amountDue ? 20 : 25) . '%;">' . _l('') . '</th>';
   

$tblhtml .= '</tr>';

$tblhtml .= '<tbody>';
$tblhtml .= '<tr>';
$tblhtml .= '<td>' . format_invoice_number($payment->invoice_data->id) . '</td>';
$tblhtml .= '<td>' . '' . '</td>';
$tblhtml .= '<td>' . _d($payment->invoice_data->date) . '</td>';
$tblhtml .= '<td>' . '' . '</td>';

$tblhtml .= '</tr>';
$tblhtml .= '</tbody>';
$tblhtml .= '</table>';
$pdf->writeHTML($tblhtml, true, false, false, false, '');

if (!empty($payment->client_note)) {
    $pdf->Ln(4);
    $pdf->SetFont($font_name, 'B', $font_size);
    $pdf->Cell(0, 0, _l('invoice_add_edit_client_note'), 0, 1, 'L', 0, '', 0);
    $pdf->SetFont($font_name, '', $font_size);
    $pdf->Ln(2);
    $pdf->writeHTMLCell('', '', '', '', $payment->client_note, 0, 1, false, true, 'L', true);
}

$pdf->Cell(0, 0, _l('Cashier Signature  _______________________'), 0, 1, 'R', 0, '', 0);