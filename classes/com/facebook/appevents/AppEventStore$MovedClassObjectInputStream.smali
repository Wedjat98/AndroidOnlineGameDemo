.class Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "AppEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MovedClassObjectInputStream"
.end annotation


# static fields
.field private static final ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME:Ljava/lang/String; = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1"

.field private static final APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME:Ljava/lang/String; = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 151
    .local v0, "resultClassDescriptor":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v2, "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1"

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 152
    if-eqz v1, :cond_17

    .line 154
    const-class v1, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;

    .line 153
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 161
    :cond_16
    :goto_16
    return-object v0

    .line 155
    :cond_17
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v2, "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 156
    if-eqz v1, :cond_16

    .line 158
    const-class v1, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;

    .line 157
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_16
.end method
