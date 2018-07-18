fun(){


        if [ -d "temp_sp" ];then
        rm -f temp_sp

        fi

        echo "----------execute $1 log begin-------" >> temp_sp

        cd $1
        echo "into $1 file..."

        echo "execute mvn clean..."
        mvn clean >> ../temp_sp

        echo "execute mvn package..."

        mvn package >> ../temp_sp

        echo "execute java -jar target/$2..."

        echo "--------$1--output---------------"
        java -jar target/$2


        echo "--------exit--file--------"
        cd ..

        echo "----------execute $1 log endl-------" >> temp_sp
}
fun "sun" "sun_test_filename.jar"
fun "sun0" "sun0_test_filename.jar"