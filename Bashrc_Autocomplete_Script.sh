# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

count=0
_rtCdrCircleAnalysis()
{

     #  if [ $phoneNumber -eq 12 ] &> /dev/null
      # then
       #   _PhoneNumber
      # fi


    #  if [ $endTime -eq 12 ] &> /dev/null
    # then
     #     _EndTime
    # fi

      #if [ $startTime -eq 12 -a $timeChoose -eq 12  ] &> /dev/null
    # then
     #   _StartTime
     #  fi

      # if [ $relativeTime -eq 12 -a $timeChoose -eq 12 ] &> /dev/null
     # then
      #  echo "Calling Relative Function"
      # _RelativeMinute
    # fi


   if [ $timeChoose -eq 12 ] &> /dev/null
    then

      _ArgumentChoose
  fi

 #  if [ $relativeTime -eq 12 -a $timeChoose -eq 12 ] &> /dev/null
  # then
   # echo "Calling Relative Function"
    #    _RelativeMinute
   # fi




    #     if [ $startTime -eq 12  ] &> /dev/null
     #    then
     #      echo "Start Calling"
      #      _StartTime
      #   fi






            local cur=${COMP_WORDS[COMP_CWORD]}
         COMPREPLY=( $(compgen -W  "1=OptionGUI 2=OptionArgument Enter[1or2]" ) ${cur})

         done=0
        passedHere=1
          now_variable=${COMP_WORDS[COMP_CWORD]}
         prev_variable=${COMP_WORDS[COMP_CWORD -1]}
         # echo " $OptionGUI_Arg  $OptionGUI_Arg_prev  Here"
         if [  \(   "$prev_variable" == "./rtCdrCircleAnalysis.sh"  -a "$now_variable" == 1  \) -a $done -ne 1 ]
          then
              done=1
             Argument=1
              printf " DONE PRESS ENTER !!! "
               #GUI Option
              # echo "Done PRESS ENTER "

         elif [   \(  "$now_variable" == "" -a "$prev_variable" == 1   \) -a $done -ne 1 ]
         then
              super_variable=${COMP_WORDS[COMP_CWORD -2]}
             if [ "$super_variable" == "./rtCdrCircleAnalysis.sh" ]
             then
                 done=1
                printf " DONE PRESS ENTER !!! "
               fi


        elif [  \(   "$prev_variable" == "./rtCdrCircleAnalysis.sh"  -a "$now_variable" == 2  \)  -a $done -ne 1  ]
          then
               done=0
 #             COMPREPLY=( $(compgen -W  "Enter[1or2] 1=Relative 2=Absolute" ) ${cur})
#
  #          now_variable=${COMP_WORDS[COMP_CWORD]}
   #         prev_variable=${COMP_WORDS[COMP_CWORD-1]}
        #    gui_variable=${COMP_WORDS[COMP_CWORD-2]}

                _ArgumentChoose

    #    echo "Now :  $now_variable Prev : $prev_variable "
       #  until [ "$prev_variable" ==  2 ]
        #  do

          #   COMPREPLY=( $(compgen -W  "1=RelativeTime 2=AbsoluteTime  Enter[1or2]" ) ${cur})
         #    timeChoosen=${COMP_WORDS[COMP_CWORD]}
            # if [ "$timeChoosen" == 1 ]
           #  then
             #    echo "Relative"
           #  elif [ "$timeChoosen" == 2 ]
            #  then
             #        echo "Absolute"
             # fi



        # done



#                COMPREPLY=( $(compgen -W  "1=RelativeTime 2=AbsoluteTime  Enter[1or2]" ) ${cur})
              #   echo "${COMP_WORDS[COMP_CWORD]}"

#                if [  "${COMP_WORDS[COMP_CWORD]}" == 2 ]
 #              then
  #                 timeChoosen=1
   #              fi
             # done

                #  echo "Execuet ${COMP_WORDS[COMP_CWORD - 1]} "
         #       Argument=2
          #   echo "Now : ${COMP_WORDS[COMP_CWORD]}    Prev :${COMP_WORDS[COMP_CWORD -1]}"


           #    if [ "${COMP_WORDS[COMP_CWORD]}" == 1 -o "${COMP_WORDS[COMP_CWORD -1]}" == 1 -a "${COMP_WORDS[COMP_CWORD -2]}" == 2 ]
            #   then
             #      COMPREPLY=( $(compgen -W  "Enter_Minutes Eg[30]" ) ${cur})

            #  elif [ "${COMP_WORDS[COMP_CWORD]}" == 2 -o "${COMP_WORDS[COMP_CWORD -1]}" == 2 -a  "${COMP_WORDS[COMP_CWORD -2]}" == 2  ]
            # then
             #     COMPREPLY=( $(compgen -W  "START_TIME Eg[20170101000000000] Format[YYYYMMDDHHMMSSMMM]" ) ${cur})
              #    if [ "${COMP_WORDS[COMP_CWORD]}" !=  2 -a "${COMP_WORDS[COMP_CWORD -1]}" != 2  ]
               #   then
                #       COMPREPLY=( $(compgen -W  "END_TIME Eg[20171231000000000] Format[YYYYMMDDHHMMSSMMM]" ) ${cur})
                #  fi
             # fi

            elif [  \(  "$now_variable" == "" -a "$prev_variable" == 2   \) -a $done -ne 1 ]
            then
                super_variable=${COMP_WORDS[COMP_CWORD -2]}
             if [ "$super_variable" == "./rtCdrCircleAnalysis.sh" ]
             then
                 done=0
                 _ArgumentChoose
             fi

           fi



      #echo " Here  ${COMP_WORDS[COMP_CWORD]}"
#            if [ "${COMP_WORDS[COMP_CWORD]}" == 1 ]
 #           then
  #                  echo "Option 1 Choosen"

   #                 COMPREPLY=( $(compgen -W  " Minutes=30 Minutes=60" ))
# echo  "Here ${COMP_WORDS[COMP_CWORD]}"

    #       fi


}


#if [ $count -eq 0 ]
#then
complete -F _rtCdrCircleAnalysis ./rtCdrCircleAnalysis.sh
#else
#complete -F _StartTime  ./rtCdrCircleAnalysis.sh
#fi

_ArgumentChoose()
{

 timeChoose=12
 done=0
  local cur=${COMP_WORDS[COMP_CWORD]}

   COMPREPLY=( $(compgen -W  "Enter[1or2] 1=Relative 2=Absolute" ) ${cur})

            now_variable=${COMP_WORDS[COMP_CWORD]}
            prev_variable=${COMP_WORDS[COMP_CWORD-1]}
      #     super_variable=${COMP_WORDS[COMP_CWORD-2]}
   #            echo "$COMP_CWORD"
      #   echo "Now : $now_variable Prev : $prev_variable"

   if [ "$now_variable" ==  1  -a "$prev_variable" == 2  ]
   then
#     echo "Inside"
     super_variable=${COMP_WORDS[COMP_CWORD-2]}
      if [ "$super_variable" == "./rtCdrCircleAnalysis.sh" ]
             then
                 done=0
                 _RelativeMinute


      fi
    elif [ "$now_variable" ==  "" -a "$prev_variable" == 1 ]
     then
        super_variable=${COMP_WORDS[COMP_CWORD-2]}
    if [ "$super_variable" == 2 ]
    then
          done=0
        _RelativeMinute

   fi
  elif [ "$now_variable" == 2   -a "$prev_variable" == 2 ]
 then

     super_variable=${COMP_WORDS[COMP_CWORD-2]}
      if [ "$super_variable" == "./rtCdrCircleAnalysis.sh" ]
      then

                 done=0
                _StartTime
     fi
  elif [ "$now_variable" ==  "" -a "$prev_variable" == 2 ]
     then
          super_variable=${COMP_WORDS[COMP_CWORD-2]} &> /dev/null

          if [ "$super_variable" == 2 ]
          then
               done=0
                _StartTime
          fi


   fi
}


_RelativeMinute()
{
echo "Relative Min"

 local cur=${COMP_WORDS[COMP_CWORD]}
  relativeTime=12
   COMPREPLY=( $(compgen -W  "EnterMinutes Eg:[30]" ) ${cur})

   now_variable=${COMP_WORDS[COMP_CWORD]}
   prev_variable=${COMP_WORDS[COMP_CWORD-1]}
   super_variable=${COMP_WORDS[COMP_CWORD-2]}
# echo "Now : $now_variable Prev : $prev_variable Super : $super_variable"
    if [ "$prev_variable" == 1 -a "$super_variable" == 2  ]
    then
         super_super_variable=${COMP_WORDS[COMP_CWORD-3]}
         if [ "$super_super_variable" == "./rtCdrCircleAnalysis.sh" ]
         then

                 done=0
                _PhoneNumber

          fi
    elif [ "$now_variable" == "" -a "$super_variable" == 1 ]
    then
        super_super_super_variable=${COMP_WORDS[COMP_CWORD-4]}

        super_super_variable=${COMP_WORDS[COMP_CWORD-3]}
         if [ "$super_super_variable" == 2 ]
         then
               if [ "$super_super_super_variable" == "./rtCdrCircleAnalysis.sh" ]
               then
                 done=0
                 _PhoneNumber
               fi
         fi
    fi

}

_StartTime()
{
count=1
startTime=12
 done=0
   local cur=${COMP_WORDS[COMP_CWORD]}

   COMPREPLY=( $(compgen -W  "START_TIME Eg[20170101000000000] Format[YYYYMMDDHHMMSSMMM]" ) ${cur})
   now_variable=${COMP_WORDS[COMP_CWORD]}
    prev_variable=${COMP_WORDS[COMP_CWORD-1]}
      super_prev=${COMP_WORDS[COMP_CWORD-2]}

   echo "Now : $now_variable Prev : $prev_variable Super : $super_prev"
   len=`echo $now_variable|awk '{print length}'`

        if [ "$prev_variable" == 2 -a "$super_prev" == 2 -a $len -eq 17 ]
        then
                 super_super_variable=${COMP_WORDS[COMP_CWORD-3]}
                 if [ "$super_super_variable" == "./rtCdrCircleAnalysis.sh" ]
                 then
                     _EndTime

                 fi
         elif [ "$now_variable" == "" -a "$super_prev" == 2 -a $len -eq 17 ]
         then
             super_super_variable=${COMP_WORDS[COMP_CWORD-3]}
             if [ "$super_super_variable" == 2 ]
             then
                 super_super_super_variable=${COMP_WORDS[COMP_CWORD-4]}
                 if [ "$super_super_super_variable" == "./rtCdrCircleAnalysis.sh" ]
               then
                  _EndTime
                fi
               fi
       fi



}



_EndTime()
{
# echo "End Fun"
   local cur=${COMP_WORDS[COMP_CWORD]}
endTime=12
   COMPREPLY=( $(compgen -W  "END_TIME Eg[20171231000000000] Format[YYYYMMDDHHMMSSMMM]" ) ${cur})
   now_variable=${COMP_WORDS[COMP_CWORD]}
            prev_variable=${COMP_WORDS[COMP_CWORD-1]}
    super_prev=${COMP_WORDS[COMP_CWORD-3]}
   super_super_prev=${COMP_WORDS[COMP_CWORD-4]}


 len=`echo $now_variable|awk '{print length}'`

         if [ "$super_prev" == 2 -a "$super_super_prev" == 2 -a $len -eq 17 ]
        then
            super_super_super_prev=${COMP_WORDS[COMP_CWORD-5]}
            if [ "$super_super_super_prev" == "./rtCdrCircleAnalysis.sh" ]
               then
                  _PhoneNumber
             fi

       elif [ "$now_variable" == "" -a "$super_super_prev" == 2 -a $len -eq 17 ]
      then
          super_super_super_prev=${COMP_WORDS[COMP_CWORD-5]}
         super_super_super_super_prev=${COMP_WORDS[COMP_CWORD-6]}

            if [ "$super_super_super_variable" == 2 ]
             then
                   if [ "$super_super_super_super_variable" == "./rtCdrCircleAnalysis.sh" ]
                   then
                       _PhoneNumber


                      fi
              fi



       fi

}


_PhoneNumber()
{
#echo "Phone Number"
phoneNumeber=12
 local cur=${COMP_WORDS[COMP_CWORD]}

   COMPREPLY=( $(compgen -W  "Enter_PHONE_NUMBER  Eg[919872001093] " ) ${cur})
   now_variable=${COMP_WORDS[COMP_CWORD]}
            prev_variable=${COMP_WORDS[COMP_CWORD-1]}
   done=0

 if [  "$now_variable" == ""   ]
  then
               printf "DONE PRESS ENTER !!!"
                done=1
      fi

}


#_rtCdrCircleAnalysis1()
#{
 #           local cur=${COMP_WORDS[COMP_CWORD]}

#            COMPREPLY=( $(compgen -W  "Minutes=30 Minutes=60" ))
# echo " ${COMP_WORDS[COMP_CWORD]}"
#            if [ "${COMP_WORDS[COMP_CWORD]}" == 1 ]
 #           then
  #                  echo "Option 1 Choosen"

   #                 COMPREPLY=( $(compgen -W  " Minutes=30 Minutes=60" ))
# echo  "Here ${COMP_WORDS[COMP_CWORD]}"

    #       fi


#}

##complete -F _rtCdrCircleAnalysis1 ./rtCdrCircleAnalysis.sh Option=1

