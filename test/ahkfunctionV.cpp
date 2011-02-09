

EXPORT LPTSTR ahkFunctionV(VARIANT func, VARIANT param1, VARIANT param2, VARIANT param3, VARIANT param4, VARIANT param5, VARIANT param6, VARIANT param7, VARIANT param8, VARIANT param9, VARIANT param10)
{
	Func *aFunc = g_script.FindFunc(func) ;
	if (aFunc)
	{	
		// g_script.mTempFunc = aFunc ;
		// ExprTokenType return_value;
		if (aFunc->mParamCount > 0 && param1 != NULL)
		{
			// Copy the appropriate values into each of the function's formal parameters.
			aFunc->mParam[0].var->AssignVariant(param1); // Assign parameter #1
			if (aFunc->mParamCount > 1  && param2 != NULL) // Assign parameter #2
			{
				// v1.0.38.01: LPARAM is now written out as a DWORD because the majority of system messages
				// use LPARAM as a pointer or other unsigned value.  This shouldn't affect most scripts because
				// of the way ATOI64() and ATOU() wrap a negative number back into the unsigned domain for
				// commands such as PostMessage/SendMessage.
				aFunc->mParam[1].var->AssignVariant(*param2);
				if (aFunc->mParamCount > 2 && param3 != NULL) // Assign parameter #3
				{
					aFunc->mParam[2].var->AssignVariant((LPTSTR )param3);
					if (aFunc->mParamCount > 3 && param4 != NULL) // Assign parameter #4
					{
						aFunc->mParam[3].var->AssignVariant((LPTSTR )param4);
						if (aFunc->mParamCount > 4 && param5 != NULL) // Assign parameter #5
						{
							aFunc->mParam[4].var->AssignVariant((LPTSTR )param5);
							if (aFunc->mParamCount > 5 && param6 != NULL) // Assign parameter #6
							{
								aFunc->mParam[5].var->AssignVariant((LPTSTR )param6);
								if (aFunc->mParamCount > 6 && param7 != NULL) // Assign parameter #7
								{
									aFunc->mParam[6].var->AssignVariant((LPTSTR )param7);
									if (aFunc->mParamCount > 7 && param8 != NULL) // Assign parameter #8
									{
										aFunc->mParam[7].var->AssignVariant((LPTSTR )param8);
										if (aFunc->mParamCount > 8 && param9 != NULL) // Assign parameter #9
										{
											aFunc->mParam[8].var->AssignVariant((LPTSTR )param9);
											if (aFunc->mParamCount > 9 && param10 != NULL) // Assign parameter #10
											{
												aFunc->mParam[9].var->AssignVariant((LPTSTR )param10);
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		
		FuncAndToken & aFuncAndToken = aFuncAndTokenToReturn[returnCount];
		aFuncAndToken.mFunc = aFunc ;
		returnCount++ ;
		if (returnCount > 9)
			returnCount = 0 ;

		SendMessage(g_hWnd, AHK_EXECUTE_FUNCTION_DLL, (WPARAM)&aFuncAndToken,NULL);
		return aFuncAndToken.result_to_return_dll;
	}
	else
		return _T(""); 
}

