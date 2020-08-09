package com.jinglingtec.ijiazublctor.sdk.aidl;

interface ITtsAPI {
    void playAsync(String str);
    void playSync(String str);
    void cancelAsync();
    void cancelSync();
}
