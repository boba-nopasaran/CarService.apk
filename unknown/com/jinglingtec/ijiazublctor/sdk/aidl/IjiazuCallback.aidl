package com.jinglingtec.ijiazublctor.sdk.aidl;

import com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuMenuEvent;

interface IjiazuCallback {
    void onInit(boolean result);
    void onStatusChange(boolean active);
    void onRequestUpdateAppStatus();
    void onNewMenu(in IjiazuMenuEvent event);
}
