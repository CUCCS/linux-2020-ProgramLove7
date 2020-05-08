#!/usr/bin/env bash

DIR=`pwd`
echo $DIR

# 帮助信息
 function help {
        
        echo "-a               对jpeg格式图片进行图片质量压缩"
        echo "-b               对jpeg/png/svg格式图片在保持原始宽高比的前提下压缩分辨率"
        echo "-m               批量添加自定义文本水印"
        echo "-p               统一添加文件名前缀"
        echo "-s               统一添加文件名后缀"
        echo "-t               将png/svg图片统一转换为jpg格式图片"
        echo "-h               帮助文档"
}

# JPEG图像压缩
function compress {
	  quality=$1
	 
	  for file in `ls $DIR`
          do
	      extension=${file##*.}
	    if [ $extension == "jpg" ];then
              echo $file
	      echo "compressing........";
	      out=$DIR/compress_$file
	      convert -quality $quality"%" $file $out
            fi
          done
}

# 压缩分辨率
function resize {
	  size=$1
	  for file in `ls $DIR`
          do
	  extension=${file##*.}
	     if [ $extension == "jpg" ] || [ $extension == "png" ] || [ $extension == "svg" ];then
	     out=$DIR/resize_$file
	     echo $file
	     echo "resizing......";
	     convert -sample $size"%x"$size"%" $file $out
	     fi
	  done

}

# 批量加入文本
function add_text {
	  color=$1
	  size=$2
	  text=$3
	  for file in `ls $DIR`
	  do
	  extension=${file##*.}
	    if [ $extension == "jpg" ] || [ $extension == "png" ] || [ $extension == "svg" ];then
	     echo $file
	     echo "drawing......";
	     # %.*表示删掉最后一个 .及其右边的字符串
	     out=$DIR/draw_${file%.*}.${file##*.}
	     #color字体颜色 size字体大小 text文本内容
	     convert -fill $color -pointsize $size -draw "text 15,50 '$text'" $file $out
	    fi
	  done
}

# 图像转为JPEG格式
function converting {
  for file in `ls $DIR`
    do
        extension=${file##*.}
    #echo $file
    if [ $extension == "png" ] || [ $extension == "svg" ];then
        out=$DIR/type_${file%.*}.jpeg
        echo $out
        echo "converting......";
        convert $file $out
    fi
  done
}

# 重命名
function rename {
	  new_name=$1
	  for file in `ls $DIR`
	    do
	     extension=${file##*.}
	     if [ $extension == "jpg" ] || [ $extension == "png" ] || [ $extension == "svg" ];then
		echo $file
		out=$DIR/$new_name.${file##*.}
		echo $out
		echo "renaming......";
		convert $file $out
	     fi
	  done
}


while true ; do   
    case "$1" in
    
        -c) C_FLAG="1" ; shift ;;
        
        -r|--resize) R_FLAG="1";
            case "$2" in
                "") shift 2 ;;
                *)RESOLUTION=$2 ; shift 2 ;;
            esac ;;
            
        --help) H_FLAG="1"; shift ;;
        
        -d|--directory)
            case "$2" in 
                "") shift 2 ;;
                 *) DIR=$2 ; shift 2 ;;
            esac ;;
            
        -q|--quality) Q_FLAG="1";
            case "$2" in
                "") shift 2 ;;
                 *) quality=$2; shift 2 ;;  #todo if the arg is integer
            esac ;;
            
        -w|--watermark)W_FLAG="1"; watermark=$2; shift 2 ;;
        
        --prefix) PREFIX=$2; shift 2;;
        
        --postfix) POSTFIX=$2; shift 2 ;;
                
        --) shift ; break ;;
        *) echo "Internal error!" ; exit 1 ;;
    esac
done
