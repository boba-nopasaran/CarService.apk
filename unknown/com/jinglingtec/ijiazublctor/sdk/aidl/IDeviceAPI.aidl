package com.jinglingtec.ijiazublctor.sdk.aidl;

import com.jinglingtec.ijiazublctor.sdk.aidl.IDeviceCallback;

interface IDeviceAPI {
    boolean isBleConnect();

    void registerDeviceListener(String appID, IDeviceCallback listener);
    void unRegisterDeviceListener(String appID, IDeviceCallback listener);
    void clearListener(String appID);

    /*----------hide start-----------*/
    void bindDevice(String uid, String mobile);
    void unBindDevice(String uid, String mobile);
    void saveBindKey(String key);
    void clearBindKey(String uid);
    void getMac();
    boolean isSupportedDevice();
    /*----------hide end-----------*/
}
