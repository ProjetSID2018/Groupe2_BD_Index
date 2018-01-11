<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function parse($raw_data,$service) {
        // Response
        $raw_response = array();
        
        foreach ($raw_data as $data) {
            $index = 0;
            // Get the raw_response from entity_service's associated method
            array_push($raw_response,$service->store($data));
        };
        return(response($raw_response,$raw_response[$index]['code']));
    }
}
