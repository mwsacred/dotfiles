# 0.4초 누르고 있으면 CapsLock 토글, 키가 조합되면 LCtrl (CapsLock 토글 되었으면 토글 취소)

*CapsLock::
{
  SendInput, {LCtrl Down}
  KeyWait, CapsLock, T0.4
  if (!hold) ; hold pressed in 0.4s
  {
    if (ErrorLevel == 1)
    {
      hold := True
      SetCapsLockState % !GetKeyState("CapsLock", "T")
      return
    }
    if (A_PriorKey == "CapsLock")
    {
      Send {vk15}
      hold := False
      return
    }
  }

  KeyWait, CapsLock
  if (A_PriorKey != "CapsLock" and hold)
    SetCapsLockState % !GetKeyState("CapsLock", "T")
  hold := False
}

CapsLock Up::
  SendInput, {LCtrl Up}
return
