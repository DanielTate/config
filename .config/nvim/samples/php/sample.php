<?php

namespace Test;

class ClassName
{

    /**
    * Test
    */
    public function testing(string $test)
    {
        return $test;
    }

    public function running(string $test)
    {
        return $this->testing($test);
    }

}

