.class public final enum Lonlysdk/framework/enumtype/AgentFuncType;
.super Ljava/lang/Enum;
.source "AgentFuncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lonlysdk/framework/enumtype/AgentFuncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeGameWillNotShowInSDKRun:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnActivityResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnBackPressedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnConfigurationChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnCreateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnDestroyHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnNewIntentHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnPauseHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnRestartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnResumeHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnSaveInstanceStateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnStartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnStopBeforeSuperHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnStopHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeOnWindowFocusChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

.field public static final enum kAgentFuncTypeonRequestPermissionsResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnStartHandle"

    invoke-direct {v0, v1, v3}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 8
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnResumeHandle"

    invoke-direct {v0, v1, v4}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnResumeHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 9
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnPauseHandle"

    invoke-direct {v0, v1, v5}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnPauseHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 10
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnStopHandle"

    invoke-direct {v0, v1, v6}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStopHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 11
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeGameWillNotShowInSDKRun"

    invoke-direct {v0, v1, v7}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeGameWillNotShowInSDKRun:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 12
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnActivityResultHandle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnActivityResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 13
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnConfigurationChangedHandle"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnConfigurationChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 14
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnSaveInstanceStateHandle"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnSaveInstanceStateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 15
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnNewIntentHandle"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnNewIntentHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 16
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnRestartHandle"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnRestartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 17
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnStopBeforeSuperHandle"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStopBeforeSuperHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 18
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnDestroyHandle"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnDestroyHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 19
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnCreateHandle"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnCreateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 20
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeonRequestPermissionsResultHandle"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeonRequestPermissionsResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 21
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnWindowFocusChangedHandle"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnWindowFocusChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 22
    new-instance v0, Lonlysdk/framework/enumtype/AgentFuncType;

    const-string v1, "kAgentFuncTypeOnBackPressedHandle"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/AgentFuncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnBackPressedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    .line 6
    const/16 v0, 0x10

    new-array v0, v0, [Lonlysdk/framework/enumtype/AgentFuncType;

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v1, v0, v3

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnResumeHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v1, v0, v4

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnPauseHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v1, v0, v5

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStopHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v1, v0, v6

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeGameWillNotShowInSDKRun:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnActivityResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnConfigurationChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnSaveInstanceStateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnNewIntentHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnRestartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStopBeforeSuperHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnDestroyHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnCreateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeonRequestPermissionsResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnWindowFocusChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnBackPressedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    aput-object v2, v0, v1

    sput-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->ENUM$VALUES:[Lonlysdk/framework/enumtype/AgentFuncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lonlysdk/framework/enumtype/AgentFuncType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lonlysdk/framework/enumtype/AgentFuncType;

    return-object v0
.end method

.method public static values()[Lonlysdk/framework/enumtype/AgentFuncType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lonlysdk/framework/enumtype/AgentFuncType;->ENUM$VALUES:[Lonlysdk/framework/enumtype/AgentFuncType;

    array-length v1, v0

    new-array v2, v1, [Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
