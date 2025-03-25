    // Fetch records every 5 seconds
    window.onload = () => {
        fetchRecords(); // Fetch on initial load
        setInterval(fetchRecords, 10000); // Refresh every 5 seconds
};