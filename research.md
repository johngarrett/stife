## preliminary

- [dev wiki](https://iphonedevwiki.net/index.php/Main_Page)
- `SBCoverSheetPrimarySlidingViewController`
    - lock screen overlay view
- [no older notificaiton tweak](https://gitra1n.com/yaypixxo/CustomNoOlderNotifications)
- [lockscreen tweaks](https://github.com/viggou/Kage)
- [cask 2, swift tweak](https://github.com/ryannair05/Cask-2)

## dev

`UNNotificationContent`
> contains every field for a notification (`date`, `_body`, `_title`...))

`BulletinBoard`
> handles all notifications

`BBServer.h`
> i think i need to hook this to grab all notifications

`SBBannerController`
> the view of all banners ?
 - `[[%c(SBBannerController) sharedInstance] dismissBannerWithAnimation:YES reason:0 forceEvenIfBusy:YES];`
