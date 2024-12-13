<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('locations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50);
            $table->string('address');
            $table->text('description');
            $table->unsignedInteger('status');
            $table->unsignedInteger('id_type');
            $table->unsignedInteger('id_province');
            $table->foreign('id_type')->references('id')->on('types')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_province')->references('id')->on('provinces')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('locations');
    }
};
