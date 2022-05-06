.class public final enum Lonlysdk/framework/enumtype/OnlySDKParamType;
.super Ljava/lang/Enum;
.source "OnlySDKParamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lonlysdk/framework/enumtype/OnlySDKParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lonlysdk/framework/enumtype/OnlySDKParamType;

.field public static final enum kParamTypeBool:Lonlysdk/framework/enumtype/OnlySDKParamType;

.field public static final enum kParamTypeDouble:Lonlysdk/framework/enumtype/OnlySDKParamType;

.field public static final enum kParamTypeInt:Lonlysdk/framework/enumtype/OnlySDKParamType;

.field public static final enum kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

.field public static final enum kParamTypeString:Lonlysdk/framework/enumtype/OnlySDKParamType;

.field public static final enum kParamTypeStringMap:Lonlysdk/framework/enumtype/OnlySDKParamType;


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
    new-instance v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    const-string v1, "kParamTypeNull"

    invoke-direct {v0, v1, v3}, Lonlysdk/framework/enumtype/OnlySDKParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 8
    new-instance v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    const-string v1, "kParamTypeInt"

    invoke-direct {v0, v1, v4}, Lonlysdk/framework/enumtype/OnlySDKParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeInt:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 9
    new-instance v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    const-string v1, "kParamTypeDouble"

    invoke-direct {v0, v1, v5}, Lonlysdk/framework/enumtype/OnlySDKParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeDouble:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 10
    new-instance v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    const-string v1, "kParamTypeBool"

    invoke-direct {v0, v1, v6}, Lonlysdk/framework/enumtype/OnlySDKParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeBool:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 11
    new-instance v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    const-string v1, "kParamTypeString"

    invoke-direct {v0, v1, v7}, Lonlysdk/framework/enumtype/OnlySDKParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeString:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 12
    new-instance v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    const-string v1, "kParamTypeStringMap"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/OnlySDKParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeStringMap:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lonlysdk/framework/enumtype/OnlySDKParamType;

    sget-object v1, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    aput-object v1, v0, v3

    sget-object v1, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeInt:Lonlysdk/framework/enumtype/OnlySDKParamType;

    aput-object v1, v0, v4

    sget-object v1, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeDouble:Lonlysdk/framework/enumtype/OnlySDKParamType;

    aput-object v1, v0, v5

    sget-object v1, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeBool:Lonlysdk/framework/enumtype/OnlySDKParamType;

    aput-object v1, v0, v6

    sget-object v1, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeString:Lonlysdk/framework/enumtype/OnlySDKParamType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeStringMap:Lonlysdk/framework/enumtype/OnlySDKParamType;

    aput-object v2, v0, v1

    sput-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->ENUM$VALUES:[Lonlysdk/framework/enumtype/OnlySDKParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lonlysdk/framework/enumtype/OnlySDKParamType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lonlysdk/framework/enumtype/OnlySDKParamType;

    return-object v0
.end method

.method public static values()[Lonlysdk/framework/enumtype/OnlySDKParamType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->ENUM$VALUES:[Lonlysdk/framework/enumtype/OnlySDKParamType;

    array-length v1, v0

    new-array v2, v1, [Lonlysdk/framework/enumtype/OnlySDKParamType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
