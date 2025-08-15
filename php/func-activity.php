<?php

#get all activities function

function get_all_activities($con)
{
    $sql = "SELECT * FROM activities";
    $stmt = $con-> prepare($sql);
    $stmt->execute();

    if ($stmt->rowCount()>0) {
        $activities = $stmt->fetchAll();
    }
    else
    {
        $activities=0;
    }
    return $activities;
}


# Get activity by id

function get_activity($con,$id)
{
    $sql = "SELECT * FROM activities WHERE id=?";
    $stmt = $con-> prepare($sql);
    $stmt->execute([$id]);

    if ($stmt->rowCount()>0) {
        $activity = $stmt->fetch();
    }
    else
    {
        $activity=0;
    }
    return $activity;
}
