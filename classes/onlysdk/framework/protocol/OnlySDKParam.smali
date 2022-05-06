.class public final Lonlysdk/framework/protocol/OnlySDKParam;
.super Ljava/lang/Object;
.source "OnlySDKParam.java"


# instance fields
.field private _boolValue:Z

.field private _doubleValue:D

.field private _intValue:I

.field private _strMapValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _strValue:Ljava/lang/String;

.field private _type:Lonlysdk/framework/enumtype/OnlySDKParamType;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 12
    iput v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    .line 14
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public constructor <init>(D)V
    .registers 6
    .param p1, "dValue"    # D

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 12
    iput v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    .line 14
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    .line 39
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeDouble:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 40
    iput-wide p1, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "nValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 12
    iput v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    .line 14
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    .line 30
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeInt:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 31
    iput p1, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "strValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 12
    iput v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    .line 14
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeString:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 58
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "strMapValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v4, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 12
    iput v6, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    .line 13
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    .line 14
    iput-boolean v6, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    .line 15
    const-string v4, ""

    iput-object v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    .line 16
    const/4 v4, 0x0

    iput-object v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    .line 67
    iget-object v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    if-nez v4, :cond_31

    .line 68
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    .line 73
    :goto_22
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_37

    .line 80
    return-void

    .line 70
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_31
    iget-object v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto :goto_22

    .line 75
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "bValue"    # Z

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeNull:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 12
    iput v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    .line 14
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    .line 48
    sget-object v0, Lonlysdk/framework/enumtype/OnlySDKParamType;->kParamTypeBool:Lonlysdk/framework/enumtype/OnlySDKParamType;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    .line 49
    iput-boolean p1, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getBoolValue()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_boolValue:Z

    return v0
.end method

.method public getCurrentType()Lonlysdk/framework/enumtype/OnlySDKParamType;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_type:Lonlysdk/framework/enumtype/OnlySDKParamType;

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_doubleValue:D

    return-wide v0
.end method

.method public getIntValue()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_intValue:I

    return v0
.end method

.method public getStrMapValue()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strMapValue:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKParam;->_strValue:Ljava/lang/String;

    return-object v0
.end method
