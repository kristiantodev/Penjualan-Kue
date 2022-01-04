<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<img src="<?= base_url('assets/img/logo.jpg'); ?>" class="logo" />
<h6 class="display-5 text-center mt-2 mb-0">Laporan Bulanan Stok Expired</h6>
<p class="text-center display-6 mt-0"><?= 'Bulan ' . ucwords($bulan) . ' Tahun ' . $tahun; ?></p>
<hr class="mt-0" />
<table class="table table-sm table-bordered table-striped mt-3">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Kode Barang</th>
            <th scope="col">Nama Barang</th>
            <th scope="col">Brand</th>
			<th scope="col" class="text-center">Kemasan</th>
            <th scope="col" class="text-center">Stok Barang</th>
            <th scope="col" class="text-center">Status</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 1;
        if ($data->num_rows() > 0) {
            foreach ($data->result() as $dt) {

                echo '<tr>';
                echo '<td>' . $i++ . '</td>';
                echo '<td>' . $dt->kode_barang . '</td>';
                echo '<td>' . $dt->nama_barang . '</td>';
                echo '<td>' . $dt->brand . '</td>';
				echo '<td class="text-center">' . $dt->kemasan . '</td>';
                echo '<td class="text-center">' . $dt->stok . '</td>';
                echo '<td class="text-center">' . $dt->stts_exp . '</td>';
                echo '</tr>';
            }
        } else {
            echo '<tr>';
            echo '<td colspan="7" class="text-center">Data tidak ditemukan</td>';
            echo '</tr>';
        }
        ?>
    </tbody>
</table>