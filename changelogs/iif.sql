CREATE OR REPLACE FUNCTION public.iif(
    condition BOOLEAN
,   true_result ANYELEMENT
,   false_result ANYELEMENT) RETURNS ANYELEMENT
    LANGUAGE plpgsql
AS
$$
BEGIN
    IF condition THEN RETURN true_result; ELSE RETURN false_result; END IF;
END
$$;

-- Requires a version with text input to handle text inputs
CREATE OR REPLACE FUNCTION public.iif(
    condition BOOLEAN
,   true_result TEXT
,   false_result TEXT) RETURNS TEXT
    LANGUAGE plpgsql
AS
$$
BEGIN
    IF condition THEN RETURN true_result; ELSE RETURN false_result; END IF;
END
$$;
