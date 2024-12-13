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
        Schema::create('utilities', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->decimal('price', 10, 2)->nullable();
            $table->string('address');
            $table->string('phonenumber')->nullable();
            $table->string('time')->nullable();
            // $table->time('closingtime')->nullable();
            $table->unsignedInteger('rank');
            $table->float('distance')->nullable();
            $table->text('description');
            $table->string('image');
            $table->unsignedInteger('status');
            $table->unsignedInteger('id_typeofutility');
            $table->unsignedInteger('id_location');
            $table->foreign('id_typeofutility')->references('id')->on('typeofutilities')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_location')->references('id')->on('locations')->onDelete('cascade')->onUpdate('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('utilities');
    }
};
