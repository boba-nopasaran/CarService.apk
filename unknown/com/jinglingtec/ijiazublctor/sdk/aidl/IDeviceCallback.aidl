package com.jinglingtec.ijiazublctor.sdk.aidl;

import com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuKeyEvent;
import com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuDeviceEvent;

interface IDeviceCallback {
    void onIjiazuKeyEvent(in IjiazuKeyEvent event);
    void onBleConnected(boolean connected);

    /*----------hide start-----------*/
    void onIjiazuDeviceEvent(in IjiazuDeviceEvent event);
    /*----------hide end-----------*/
}
