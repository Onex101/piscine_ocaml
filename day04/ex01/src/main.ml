open Value

let () =
    print_string((toString T2) ^ "\n");
    print_string((toString T3) ^ "\n");
    print_string((toString Jack) ^ "\n");
    print_string((toString As) ^ "\n");
    print_string((toStringVerbose T2) ^ "\n");
    print_string((toStringVerbose T3) ^ "\n");
    print_string((toStringVerbose Jack) ^ "\n");
    print_string((toStringVerbose As) ^ "\n");
    print_string((toStringVerbose (next Queen)) ^ "\n");
    print_string((toStringVerbose (previous Queen)) ^ "\n");
    print_string((toStringVerbose (next As)) ^ "\n");
    print_string((toStringVerbose (previous T2)) ^ "\n");