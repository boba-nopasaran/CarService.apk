package com.jinglingtec.ijiazublctor.sdk.aidl;

import com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuCallback;
import com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuMenuEvent;

interface IjiazuAPI {
    void init(String appID, String key);
    void getPermission(String appID);
    void itemActive(int id);

    void registerIjiazuListener(String appID, IjiazuCallback listener);
    void unRegisterIjiazuListener(String appID, IjiazuCallback listener);
    void clearListener(String appID);

    /*----------hide start-----------*/
    void setRestart(String appID);
    void sendMenuItem(in IjiazuMenuEvent event);
    /*----------hide end-----------*/
}
