.class final Lmobi/tikl/wire/control/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l$g$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/n;
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37786
    invoke-static {p1}, Lmobi/tikl/wire/control/a;->d(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$g;

    .line 37787
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->a(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37789
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->L()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x33

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RandomPadding"

    aput-object v3, v2, v5

    const-string v3, "TimeStamp"

    aput-object v3, v2, v6

    const-string v3, "Version"

    aput-object v3, v2, v7

    const-string v3, "RegisterReqM"

    aput-object v3, v2, v8

    const-string v3, "RegisterRespS"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SessionReqM"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "SessionRespS"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "KeepAliveReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "KeepAliveRespS"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "JoinSessionS"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "EndSessionS"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "JoinSessionAckM"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "JoinSessionHash"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ChatMessage"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "ChatMessageAck"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "StorageReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "StorageRespS"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "ChatMessageServerAck"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "TypingIndicator"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "SessionStateReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "SessionStateRespS"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "ActiveSessionQueryM"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "ActiveSessionAnswerS"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "ProfileUrlReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "ProfileUrlRespS"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "ProfileMgmtReq"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "ProfileMgmtResp"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "ChatroomInviteM"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "ChatroomInviteS"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "ChatroomInviteAckS"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "ChatroomInviteAckM"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "ChatroomLeaveM"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "ChatroomLeaveS"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "ChatroomLeaveAckS"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "ChatroomLeaveAckM"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "ChatroomSyncReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "ChatroomSyncRespS"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "ChatroomState"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "ChatroomUpgradeReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "ChatroomUpdateName"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "ChatroomUpgradeAckS"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "ChatroomChatMessage"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "ChatroomTypingIndicator"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "ChatroomSessionReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "ChatroomSessionStateReqM"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "ChatroomSessionStateRespS"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "ChatroomJoinSessionS"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "ChatroomActiveSessionAnswerS"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "PairingReq"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "PairingResp"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "EventM"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$av;

    const-class v4, Lmobi/tikl/wire/control/a$av$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->a(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37795
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->u(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37797
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ks()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Source"

    aput-object v3, v2, v5

    const-string v3, "Destinations"

    aput-object v3, v2, v6

    const-string v3, "GlobalizedDestinations"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$ao;

    const-class v4, Lmobi/tikl/wire/control/a$ao$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->t(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37803
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->v(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37805
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ku()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Source"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$u;

    const-class v4, Lmobi/tikl/wire/control/a$u$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->u(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37811
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->w(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37813
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kw()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Proceed"

    aput-object v3, v2, v5

    const-string v3, "SessionId"

    aput-object v3, v2, v6

    const-string v3, "UdpServer"

    aput-object v3, v2, v7

    const-string v3, "DestPort"

    aput-object v3, v2, v8

    const-string v3, "MediaPort"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "UnknownPeers"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$ap;

    const-class v4, Lmobi/tikl/wire/control/a$ap$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->v(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37819
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->x(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37821
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ky()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CountryCode"

    aput-object v3, v2, v5

    const-string v3, "PhoneNumber"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$G;

    const-class v4, Lmobi/tikl/wire/control/a$G$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->w(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37827
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->y(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37829
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kA()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MagicNumber"

    aput-object v3, v2, v5

    const-string v3, "MyNumber"

    aput-object v3, v2, v6

    const-string v3, "DeviceId"

    aput-object v3, v2, v7

    const-string v3, "DeviceManufacturer"

    aput-object v3, v2, v8

    const-string v3, "DeviceModel"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "DeviceProduct"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DeviceBuildId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DeviceBrand"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "DeviceCategory"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "AppType"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ClientVersion"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ClientVersionCode"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PushToken"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "C2DmRegistrationId"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "DisplayName"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Email"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "AuthToken"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "GcmRegistrationId"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$ag;

    const-class v4, Lmobi/tikl/wire/control/a$ag$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->x(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37835
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->z(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37837
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kC()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Ok"

    aput-object v3, v2, v5

    const-string v3, "TempNumber"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$ah;

    const-class v4, Lmobi/tikl/wire/control/a$ah$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->y(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37843
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->A(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37845
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kE()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Requester"

    aput-object v3, v2, v5

    const-string v3, "Requestee"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$S;

    const-class v4, Lmobi/tikl/wire/control/a$S$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->z(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37851
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->B(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37853
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kG()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Requester"

    aput-object v3, v2, v5

    const-string v3, "Requestee"

    aput-object v3, v2, v6

    const-string v3, "Ok"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$T;

    const-class v4, Lmobi/tikl/wire/control/a$T$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->A(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37859
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->C(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37861
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kI()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Alive"

    aput-object v3, v2, v5

    const-string v3, "TotalSRtimeouts"

    aput-object v3, v2, v6

    const-string v3, "InvitesSent"

    aput-object v3, v2, v7

    const-string v3, "SessId"

    aput-object v3, v2, v8

    const-string v3, "ProcId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "AdRequestCount"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "AdSucceessCount"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "AdFailureCount"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "AdDisplayCount"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "AdClickCount"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$N;

    const-class v4, Lmobi/tikl/wire/control/a$N$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->B(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37867
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->D(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37869
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kK()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Alive"

    aput-object v3, v2, v5

    const-string v3, "Seq"

    aput-object v3, v2, v6

    const-string v3, "DisplayTopAd"

    aput-object v3, v2, v7

    const-string v3, "DisplayBottomAd"

    aput-object v3, v2, v8

    const-class v3, Lmobi/tikl/wire/control/a$O;

    const-class v4, Lmobi/tikl/wire/control/a$O$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->C(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37875
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->E(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37877
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kM()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-string v3, "Requester"

    aput-object v3, v2, v6

    const-string v3, "GroupList"

    aput-object v3, v2, v7

    const-string v3, "ConnectProtocol"

    aput-object v3, v2, v8

    const-string v3, "ServerHost"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ServerPort"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MediaPort"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$M;

    const-class v4, Lmobi/tikl/wire/control/a$M$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->D(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37883
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->F(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37885
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kO()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-string v3, "Requester"

    aput-object v3, v2, v6

    const-string v3, "ChatroomId"

    aput-object v3, v2, v7

    const-string v3, "ConnectProtocol"

    aput-object v3, v2, v8

    const-string v3, "ServerHost"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ServerPort"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MediaPort"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$n;

    const-class v4, Lmobi/tikl/wire/control/a$n$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->E(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37891
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->G(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37893
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kQ()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-string v3, "Caller"

    aput-object v3, v2, v6

    const-string v3, "Callee"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$K;

    const-class v4, Lmobi/tikl/wire/control/a$K$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->F(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37899
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->H(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37901
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kS()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$E;

    const-class v4, Lmobi/tikl/wire/control/a$E$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->G(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37907
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->I(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37909
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kU()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "From"

    aput-object v3, v2, v6

    const-string v3, "To"

    aput-object v3, v2, v7

    const-string v3, "Message"

    aput-object v3, v2, v8

    const-string v3, "MediaType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Url"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PreviewUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Length"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PreviewSize"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "AttachmentSize"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "PreviewExt"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "AttachmentExt"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Location"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "BrowserUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "BrowserPreviewUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "LiveAvatarUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "SpecialFlag"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "IgnoringUnknownMediaType"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "IsWallPost"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "SenderDisplayName"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "AttachedMsgId"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Resend"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$d;

    const-class v4, Lmobi/tikl/wire/control/a$d$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->H(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37915
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->J(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37917
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kW()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "From"

    aput-object v3, v2, v6

    const-string v3, "ChatroomId"

    aput-object v3, v2, v7

    const-string v3, "Message"

    aput-object v3, v2, v8

    const-string v3, "MediaType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Url"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PreviewUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Length"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PreviewSize"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "AttachmentSize"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "PreviewExt"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "AttachmentExt"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Location"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "BrowserUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "BrowserPreviewUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "LiveAvatarUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "SpecialFlag"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "IgnoringUnknownMediaType"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "IsWallPost"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "SenderDisplayName"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "AttachedMsgId"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Resend"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$i;

    const-class v4, Lmobi/tikl/wire/control/a$i$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->I(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37923
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->K(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37925
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->kY()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Latitude"

    aput-object v3, v2, v5

    const-string v3, "Longitude"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$P;

    const-class v4, Lmobi/tikl/wire/control/a$P$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->J(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37931
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->L(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37933
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->la()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "From"

    aput-object v3, v2, v5

    const-string v3, "To"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$aw;

    const-class v4, Lmobi/tikl/wire/control/a$aw$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->K(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37939
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->M(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37941
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lc()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "From"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$A;

    const-class v4, Lmobi/tikl/wire/control/a$A$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->L(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37947
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->N(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37949
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->le()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "From"

    aput-object v3, v2, v6

    const-string v3, "To"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$e;

    const-class v4, Lmobi/tikl/wire/control/a$e$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->M(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37955
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->O(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37957
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lg()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$f;

    const-class v4, Lmobi/tikl/wire/control/a$f$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->N(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37963
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->P(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37965
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->li()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ClientId"

    aput-object v3, v2, v5

    const-string v3, "UrlCount"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$at;

    const-class v4, Lmobi/tikl/wire/control/a$at$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->O(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37971
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->Q(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37973
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lk()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "GetUrl"

    aput-object v3, v2, v5

    const-string v3, "PutUrl"

    aput-object v3, v2, v6

    const-string v3, "BrowserGetUrl"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$az;

    const-class v4, Lmobi/tikl/wire/control/a$az$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->P(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37979
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->R(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37981
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lm()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "UrlPairs"

    aput-object v3, v2, v5

    const-string v3, "UseS3Rrs"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$au;

    const-class v4, Lmobi/tikl/wire/control/a$au$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->Q(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37987
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->S(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37989
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lo()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ClientId"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$W;

    const-class v4, Lmobi/tikl/wire/control/a$W$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->R(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 37995
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->T(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 37997
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lq()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ClientId"

    aput-object v3, v2, v5

    const-string v3, "AvatarPutUrl"

    aput-object v3, v2, v6

    const-string v3, "TimePutUrl"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$X;

    const-class v4, Lmobi/tikl/wire/control/a$X$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->S(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38003
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->U(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38005
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ls()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ClientId"

    aput-object v3, v2, v5

    const-string v3, "CustomizeAvatar"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$U;

    const-class v4, Lmobi/tikl/wire/control/a$U$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->T(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38011
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->V(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38013
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lu()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ClientId"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$V;

    const-class v4, Lmobi/tikl/wire/control/a$V$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->U(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38019
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->W(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38021
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lw()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SessionMembers"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$ar;

    const-class v4, Lmobi/tikl/wire/control/a$ar$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->V(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38027
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->X(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38029
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ly()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$v;

    const-class v4, Lmobi/tikl/wire/control/a$v$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->W(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38035
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->Y(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38037
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lA()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "SessionMembers"

    aput-object v3, v2, v5

    const-string v3, "InCall"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$as;

    const-class v4, Lmobi/tikl/wire/control/a$as$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->X(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38043
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->Z(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38045
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lC()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-string v3, "InCall"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$w;

    const-class v4, Lmobi/tikl/wire/control/a$w$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->Y(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38051
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aa(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38053
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lE()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SessionMember"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$b;

    const-class v4, Lmobi/tikl/wire/control/a$b$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->Z(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38059
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ab(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38061
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lG()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ActiveSessions"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$a;

    const-class v4, Lmobi/tikl/wire/control/a$a$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aa(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38067
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ac(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38069
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lI()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ActiveChatroomSessions"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$h;

    const-class v4, Lmobi/tikl/wire/control/a$h$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ab(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38075
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ad(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38077
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lK()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EventType"

    aput-object v3, v2, v5

    const-string v3, "EventValue"

    aput-object v3, v2, v6

    const-string v3, "EventString"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$F;

    const-class v4, Lmobi/tikl/wire/control/a$F$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ac(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38083
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ae(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38085
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lM()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GlobalizedNumber"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$H;

    const-class v4, Lmobi/tikl/wire/control/a$H$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ad(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38091
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->af(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38093
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lO()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "HeadRandomPadding"

    aput-object v3, v2, v5

    const-string v3, "Heartbeat"

    aput-object v3, v2, v6

    const-string v3, "Hangup"

    aput-object v3, v2, v7

    const-string v3, "AllMembers"

    aput-object v3, v2, v8

    const-string v3, "WebrtcOffer"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "WebrtcAnswer"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "IceCandidate"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "P2PLinkStatus"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ChatroomId"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "TailRandomPadding"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$ak;

    const-class v4, Lmobi/tikl/wire/control/a$ak$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ae(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38099
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ag(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38101
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lQ()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "HeadRandomPadding"

    aput-object v3, v2, v5

    const-string v3, "Heartbeat"

    aput-object v3, v2, v6

    const-string v3, "PeerAddress"

    aput-object v3, v2, v7

    const-string v3, "WebrtcOffer"

    aput-object v3, v2, v8

    const-string v3, "WebrtcAnswer"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "IceCandidate"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "P2PLinkStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "TailRandomPadding"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$al;

    const-class v4, Lmobi/tikl/wire/control/a$al$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->af(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38107
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ah(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38109
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lS()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Label"

    aput-object v3, v2, v6

    const-string v3, "Candidate"

    aput-object v3, v2, v7

    const-string v3, "SequenceNumber"

    aput-object v3, v2, v8

    const-class v3, Lmobi/tikl/wire/control/a$J;

    const-class v4, Lmobi/tikl/wire/control/a$J$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ag(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38115
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ai(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38117
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lU()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ReceivedOK"

    aput-object v3, v2, v5

    const-string v3, "ReceivedDataRate"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$R;

    const-class v4, Lmobi/tikl/wire/control/a$R$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ah(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38123
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aj(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38125
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lW()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ClientId"

    aput-object v3, v2, v5

    const-string v3, "Speaking"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$aj;

    const-class v4, Lmobi/tikl/wire/control/a$aj$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ai(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38131
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ak(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38133
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->lY()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ClientId"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$ai;

    const-class v4, Lmobi/tikl/wire/control/a$ai$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aj(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38139
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->al(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38141
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ma()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ActiveMembers"

    aput-object v3, v2, v5

    const-string v3, "InactiveMembers"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$aq;

    const-class v4, Lmobi/tikl/wire/control/a$aq$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ak(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38147
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->am(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38149
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mc()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MemberId"

    aput-object v3, v2, v5

    const-string v3, "Speaking"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$an;

    const-class v4, Lmobi/tikl/wire/control/a$an$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->al(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38155
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->an(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38157
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->me()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MagicNumber"

    aput-object v3, v2, v5

    const-string v3, "Members"

    aput-object v3, v2, v6

    const-string v3, "ChatroomId"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$am;

    const-class v4, Lmobi/tikl/wire/control/a$am$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->am(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38163
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ao(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38165
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mg()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Host"

    aput-object v3, v2, v5

    const-string v3, "Port"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$I;

    const-class v4, Lmobi/tikl/wire/control/a$I$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->an(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38171
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ap(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38173
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mi()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Info"

    aput-object v3, v2, v6

    const-string v3, "P2Pvalue"

    aput-object v3, v2, v7

    const-string v3, "TailRandomPadding"

    aput-object v3, v2, v8

    const-class v3, Lmobi/tikl/wire/control/a$Q;

    const-class v4, Lmobi/tikl/wire/control/a$Q$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ao(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38179
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aq(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38181
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mk()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Join"

    aput-object v3, v2, v5

    const-string v3, "JoinHash"

    aput-object v3, v2, v6

    const-string v3, "MissedCall"

    aput-object v3, v2, v7

    const-string v3, "MissedCallHash"

    aput-object v3, v2, v8

    const-string v3, "MissedChat"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "MissedChatHash"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FriendJoined"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "SysMsg"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PushChatroomInviteHash"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "ChatroomPushMissedChat"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ChatroomPushMissedCall"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ChatroomJoinSessionS"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$ae;

    const-class v4, Lmobi/tikl/wire/control/a$ae$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ap(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38187
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ar(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38189
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mm()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-string v3, "Requester"

    aput-object v3, v2, v6

    const-string v3, "GroupHash"

    aput-object v3, v2, v7

    const-string v3, "ConnectProtocol"

    aput-object v3, v2, v8

    const-string v3, "ServerHost"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ServerPort"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MediaPort"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$L;

    const-class v4, Lmobi/tikl/wire/control/a$L$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aq(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38195
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->as(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38197
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mo()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Caller"

    aput-object v3, v2, v5

    const-string v3, "Callees"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$aa;

    const-class v4, Lmobi/tikl/wire/control/a$aa$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ar(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38203
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->at(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38205
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mq()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Caller"

    aput-object v3, v2, v5

    const-string v3, "GroupHash"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$ab;

    const-class v4, Lmobi/tikl/wire/control/a$ab$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->as(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38211
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->au(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38213
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ms()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Caller"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$s;

    const-class v4, Lmobi/tikl/wire/control/a$s$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->at(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38219
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x36

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->av(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38221
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mu()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "Sender"

    aput-object v3, v2, v6

    const-string v3, "Receivers"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$ac;

    const-class v4, Lmobi/tikl/wire/control/a$ac$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->au(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38227
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aw(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38229
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mw()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Sender"

    aput-object v3, v2, v5

    const-string v3, "GroupHash"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$ad;

    const-class v4, Lmobi/tikl/wire/control/a$ad$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->av(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38235
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ax(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38237
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->my()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Sender"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$t;

    const-class v4, Lmobi/tikl/wire/control/a$t$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aw(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38243
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ay(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38245
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mA()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Friend"

    aput-object v3, v2, v5

    const-string v3, "FriendName"

    aput-object v3, v2, v6

    const-string v3, "Destination"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$Z;

    const-class v4, Lmobi/tikl/wire/control/a$Z$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ax(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38251
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->az(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38253
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mC()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Message"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$af;

    const-class v4, Lmobi/tikl/wire/control/a$af$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->ay(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38259
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aA(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38261
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mE()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FromDisplayName"

    aput-object v3, v2, v5

    const-string v3, "From"

    aput-object v3, v2, v6

    const-string v3, "To"

    aput-object v3, v2, v7

    const-string v3, "TimeStamp"

    aput-object v3, v2, v8

    const-string v3, "ChatToUnregisteredUser"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CallToUnregisteredUser"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$ay;

    const-class v4, Lmobi/tikl/wire/control/a$ay$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->az(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38267
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aB(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38269
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mG()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MediaType"

    aput-object v3, v2, v5

    const-string v3, "Message"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$g;

    const-class v4, Lmobi/tikl/wire/control/a$g$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aA(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38275
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aC(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38277
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mI()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-class v3, Lmobi/tikl/wire/control/a$c;

    const-class v4, Lmobi/tikl/wire/control/a$c$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aB(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38283
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aD(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38285
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mK()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Dest"

    aput-object v3, v2, v5

    const-string v3, "TimeStamp"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$ax;

    const-class v4, Lmobi/tikl/wire/control/a$ax$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aC(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38291
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aE(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38293
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mM()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-string v3, "From"

    aput-object v3, v2, v7

    const-string v3, "Invitee"

    aput-object v3, v2, v8

    const-string v3, "Name"

    aput-object v3, v2, v9

    const-class v3, Lmobi/tikl/wire/control/a$l;

    const-class v4, Lmobi/tikl/wire/control/a$l$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aD(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38299
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aF(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38301
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mO()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-string v3, "From"

    aput-object v3, v2, v7

    const-string v3, "Invitee"

    aput-object v3, v2, v8

    const-string v3, "CurrentState"

    aput-object v3, v2, v9

    const-class v3, Lmobi/tikl/wire/control/a$m;

    const-class v4, Lmobi/tikl/wire/control/a$m$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aE(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38307
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aG(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38309
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mQ()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-string v3, "Success"

    aput-object v3, v2, v7

    const-string v3, "CurrentState"

    aput-object v3, v2, v8

    const-class v3, Lmobi/tikl/wire/control/a$k;

    const-class v4, Lmobi/tikl/wire/control/a$k$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aF(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38315
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aH(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38317
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mS()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$j;

    const-class v4, Lmobi/tikl/wire/control/a$j$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aG(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38323
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x43

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aI(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38325
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mU()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-string v3, "From"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$q;

    const-class v4, Lmobi/tikl/wire/control/a$q$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aH(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38331
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x44

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aJ(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38333
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mW()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-string v3, "From"

    aput-object v3, v2, v7

    const-string v3, "CurrentState"

    aput-object v3, v2, v8

    const-class v3, Lmobi/tikl/wire/control/a$r;

    const-class v4, Lmobi/tikl/wire/control/a$r$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aI(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38339
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aK(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38341
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->mY()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-string v3, "Success"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$p;

    const-class v4, Lmobi/tikl/wire/control/a$p$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aJ(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38347
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aL(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38349
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->na()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$o;

    const-class v4, Lmobi/tikl/wire/control/a$o$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aK(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38355
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x47

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aM(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38357
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->nc()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-class v3, Lmobi/tikl/wire/control/a$y;

    const-class v4, Lmobi/tikl/wire/control/a$y$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aL(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38363
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x48

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aN(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38365
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ne()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-string v3, "State"

    aput-object v3, v2, v6

    const-string v3, "Success"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$z;

    const-class v4, Lmobi/tikl/wire/control/a$z$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aM(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38371
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aO(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38373
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ng()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-string v3, "Members"

    aput-object v3, v2, v6

    const-string v3, "VersionId"

    aput-object v3, v2, v7

    const-string v3, "Name"

    aput-object v3, v2, v8

    const-class v3, Lmobi/tikl/wire/control/a$x;

    const-class v4, Lmobi/tikl/wire/control/a$x$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aN(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38379
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aP(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38381
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->ni()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-class v3, Lmobi/tikl/wire/control/a$B;

    const-class v4, Lmobi/tikl/wire/control/a$B$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aO(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38387
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aQ(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38389
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->nk()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-string v3, "Members"

    aput-object v3, v2, v6

    const-string v3, "Name"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$D;

    const-class v4, Lmobi/tikl/wire/control/a$D$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aP(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38395
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aR(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38397
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->nm()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ChatroomId"

    aput-object v3, v2, v5

    const-string v3, "Success"

    aput-object v3, v2, v6

    const-string v3, "CurrentState"

    aput-object v3, v2, v7

    const-class v3, Lmobi/tikl/wire/control/a$C;

    const-class v4, Lmobi/tikl/wire/control/a$C$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aQ(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38403
    invoke-static {}, Lmobi/tikl/wire/control/a;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aS(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 38405
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lmobi/tikl/wire/control/a;->no()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MsgId"

    aput-object v3, v2, v5

    const-string v3, "ChatroomId"

    aput-object v3, v2, v6

    const-string v3, "From"

    aput-object v3, v2, v7

    const-string v3, "FromName"

    aput-object v3, v2, v8

    const-string v3, "ChatroomTitle"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "IsMe"

    aput-object v4, v2, v3

    const-class v3, Lmobi/tikl/wire/control/a$Y;

    const-class v4, Lmobi/tikl/wire/control/a$Y$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lmobi/tikl/wire/control/a;->aR(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 38411
    const/4 v0, 0x0

    return-object v0
.end method
