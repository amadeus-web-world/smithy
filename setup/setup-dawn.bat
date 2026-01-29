echo step 1 - clones spring and smithy

IF EXIST "spring" (
	echo "spring found"
) ELSE (
	git clone https://github.com/amadeus-web-world/spring.git ./spring
)

IF EXIST "smithy" (
	echo "smithy found"
) ELSE (
	git clone https://github.com/amadeus-web-world/smithy.git ./smithy
)

echo check above for errors then press any key to go to step 2
pause
cls

copy "smithy\setup\active.code-workspace" "active.code-workspace"
copy "smithy\setup\amadeusweb-work-logo.png" "amadeusweb-work-logo.png"
copy "smithy\setup\index.php" "index.php"
copy "smithy\setup\update-dawn.bat" "update-dawn.bat"
pause
