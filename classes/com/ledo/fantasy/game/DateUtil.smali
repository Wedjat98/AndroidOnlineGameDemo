.class public Lcom/ledo/fantasy/game/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static TIME_ZONE_OFFSET:J = 0x0L

.field public static final addMills:J = 0xf731400L

.field public static final dayMills:J = 0x5265c00L

.field public static final hourMills:J = 0x36ee80L

.field public static final minuteMills:J = 0xea60L

.field public static final weekMills:J = 0x240c8400L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/ledo/fantasy/game/DateUtil;->TIME_ZONE_OFFSET:J

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDay(J)I
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 35
    sget-wide v0, Lcom/ledo/fantasy/game/DateUtil;->TIME_ZONE_OFFSET:J

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getCurrentStringFormat(J)Ljava/lang/String;
    .registers 6
    .param p0, "currentDay"    # J

    .prologue
    .line 128
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy\u5e74M\u6708d\u65e5"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "fomat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 130
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "currentTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getCurrentStringFormatEn(J)Ljava/lang/String;
    .registers 6
    .param p0, "currentTime"    # J

    .prologue
    .line 136
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "fomat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "sCurrentTime":Ljava/lang/String;
    return-object v1
.end method

.method public static getCurrentWeek(J)I
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 40
    sget-wide v0, Lcom/ledo/fantasy/game/DateUtil;->TIME_ZONE_OFFSET:J

    add-long/2addr v0, p0

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getCurrentWeekDay(J)I
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/ledo/fantasy/game/DateUtil;->getWeekFirstSecond(J)J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getDayFirstSecond(J)J
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 66
    sget-wide v0, Lcom/ledo/fantasy/game/DateUtil;->TIME_ZONE_OFFSET:J

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    rem-long/2addr v0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static getLastSecondCalendar()Ljava/util/Calendar;
    .registers 4

    .prologue
    const/16 v3, 0x3b

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 58
    .local v0, "current":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 60
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 61
    return-object v0
.end method

.method public static getMonthFirstSecond(J)J
    .registers 6
    .param p0, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 89
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 90
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 94
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getMonthLastSecond(J)J
    .registers 6
    .param p0, "time"    # J

    .prologue
    const/16 v3, 0x3b

    const/4 v2, 0x5

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 101
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 107
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getPeriodShortFormat(J)Ljava/lang/String;
    .registers 14
    .param p0, "period"    # J

    .prologue
    .line 168
    const-wide/32 v10, 0x5265c00

    div-long v0, p0, v10

    .line 169
    .local v0, "daynum":J
    const-wide/32 v10, 0x5265c00

    rem-long v2, p0, v10

    .line 171
    .local v2, "dayret":J
    const-wide/32 v10, 0x36ee80

    div-long v4, v2, v10

    .line 172
    .local v4, "hournum":J
    const-wide/32 v10, 0x36ee80

    rem-long v6, v2, v10

    .line 174
    .local v6, "hourret":J
    const-wide/32 v10, 0xea60

    div-long v8, v6, v10

    .line 175
    .local v8, "minutenum":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_47

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5929"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u5c0f\u65f6"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u5206\u949f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 182
    :goto_46
    return-object v10

    .line 177
    :cond_47
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_6b

    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5c0f\u65f6"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u5206\u949f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_46

    .line 179
    :cond_6b
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_85

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5206\u949f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_46

    .line 182
    :cond_85
    const-string v10, "1\u5206\u949f"

    goto :goto_46
.end method

.method public static getPeriodStringFormat(J)Ljava/lang/String;
    .registers 16
    .param p0, "period"    # J

    .prologue
    const-wide/32 v12, 0x5265c00

    const-wide/32 v10, 0x36ee80

    .line 150
    div-long v0, p0, v12

    .line 151
    .local v0, "daynum":J
    rem-long v2, p0, v12

    .line 153
    .local v2, "dayret":J
    div-long v4, v2, v10

    .line 154
    .local v4, "hournum":J
    rem-long v6, v2, v10

    .line 156
    .local v6, "hourret":J
    const-wide/32 v10, 0xea60

    div-long v8, v6, v10

    .line 158
    .local v8, "minutenum":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5929"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u65f6"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u5206"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static getStringFormat2Second(J)Ljava/lang/String;
    .registers 6
    .param p0, "currentDay"    # J

    .prologue
    .line 191
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "fomat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 193
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "currentTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getSysTimeZone()D
    .registers 6

    .prologue
    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 19
    .local v0, "offsetMils":I
    div-int/lit16 v1, v0, 0xe10

    int-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public static getWeekFirstSecond(J)J
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 71
    sget-wide v0, Lcom/ledo/fantasy/game/DateUtil;->TIME_ZONE_OFFSET:J

    add-long/2addr v0, p0

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    rem-long/2addr v0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static inTheSameDay(JJ)Z
    .registers 6
    .param p0, "firstT"    # J
    .param p2, "secondT"    # J

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/ledo/fantasy/game/DateUtil;->getCurrentDay(J)I

    move-result v0

    invoke-static {p2, p3}, Lcom/ledo/fantasy/game/DateUtil;->getCurrentDay(J)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 45
    const/4 v0, 0x1

    .line 46
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static inTheSameMonth(JJ)Z
    .registers 10
    .param p0, "firstT"    # J
    .param p2, "secondT"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 113
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 114
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_25

    .line 117
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_25

    .line 119
    :goto_24
    return v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public static inTheSameWeek(JJ)Z
    .registers 6
    .param p0, "firstT"    # J
    .param p2, "secondT"    # J

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/ledo/fantasy/game/DateUtil;->getCurrentWeek(J)I

    move-result v0

    invoke-static {p2, p3}, Lcom/ledo/fantasy/game/DateUtil;->getCurrentWeek(J)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 51
    const/4 v0, 0x1

    .line 52
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static parseDate(Ljava/lang/String;)J
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 206
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 207
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 206
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 209
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-wide v2

    return-wide v2

    .line 210
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_1b
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65f6\u95f4\u683c\u5f0f\u9519\u8bef\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setSysTimeZoneFromID(Ljava/lang/String;)V
    .registers 3
    .param p0, "strTimeZoneID"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/ledo/fantasy/game/DateUtil;->TIME_ZONE_OFFSET:J

    .line 31
    return-void
.end method

.method public static setSysTimeZoneFromOffHours(D)V
    .registers 8
    .param p0, "offsetHours"    # D

    .prologue
    .line 23
    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v2, p0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 24
    .local v0, "offsetMils":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v2, v1

    sput-wide v2, Lcom/ledo/fantasy/game/DateUtil;->TIME_ZONE_OFFSET:J

    .line 26
    return-void
.end method
